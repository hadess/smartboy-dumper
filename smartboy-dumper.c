/*
 * smartboy-dumper
 *
 * Copyright (C) 2018, Bastien Nocera <hadess@hadess.net>
 *
 * This is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 3 of the
 * License, or (at your option) any later version.
 *
 * Nautilus is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see <http://www.gnu.org/licenses/>.
 *
 */

#include <glib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

typedef enum {
	IN_NONE,
	IN_NM,		/* NAME */
	IN_RB,		/* SIZE */
	IN_STARTROM,	/* ROM */
	IN_SRM,         /* SRAM */
	IN_END,         /* End of the ROM dump */
	IN_NR,          /* No ROM */
} InState;

#define BANK_SIZE (16*1024)

static char *tags[] = {
	"",
	"nm",
	"rb",
	"startrom",
	"srm",
	"end",
	"nr",
};

typedef struct {
	GMainLoop *loop;
	GIOChannel *chan;
	InState state;
	int tag_pos; /* tag cursor position, or -1 if complete */
	gboolean rom_req;
	gboolean cart_req;

	char *rom_name;
	int nr_banks; /* -1 is unknown */
} SmartboyDumper;

static SmartboyDumper *
smartboy_dumper_new (void)
{
	SmartboyDumper *dumper;

	dumper = g_new0 (SmartboyDumper, 1);
	dumper->state = IN_NONE;
	dumper->tag_pos = 0;
	dumper->nr_banks = -1;

	return dumper;
}

static void
smartboy_dumper_free (SmartboyDumper *dumper)
{
	g_io_channel_shutdown (dumper->chan, FALSE, NULL);
	g_io_channel_unref (dumper->chan);
	g_free (dumper->rom_name);
	g_free (dumper);
}

#define GB_MAGIC_STRING "\xce\xed\x66\x66\xcc\x0d\x00\x0b\x03\x73\x00\x83\x00\x0c\x00\x0d\x00\x08\x11\x1f\x88\x89\x00\x0e"
#define GB_MAGIC_OFFSET 260

static char *
create_filename (const char *rom_name,
		 GByteArray *buf)
{
	/* Figure out the suffix */
	if (buf->len < GB_MAGIC_OFFSET + strlen (GB_MAGIC_STRING))
		return NULL;

	if (memcmp (buf->data + GB_MAGIC_OFFSET, GB_MAGIC_STRING, strlen (GB_MAGIC_STRING)) == 0)
		return g_strdup_printf ("%s.gb", rom_name);

	return g_strdup_printf ("%s.gbc", rom_name);
}

static InState
suffix_get_tag (const char *str)
{
	guint i;

	if (str == NULL)
		return IN_NONE;

	for (i = 1; i < G_N_ELEMENTS(tags); i++) {
		if (g_str_has_suffix (str, tags[i]))
			return i;
	}

	return IN_NONE;
}

static InState
prefix_get_tag (const char *str)
{
	guint i;

	if (str == NULL)
		return IN_NONE;

	for (i = 1; i < G_N_ELEMENTS(tags); i++) {
		if (g_str_has_prefix (str, tags[i]))
			return i;
	}

	return IN_NONE;
}

static InState
read_until_new_state (SmartboyDumper *dumper,
		      GString        *str)
{
	InState state;

	while ((state = suffix_get_tag (str->str)) == IN_NONE) {
		char buf[1];
		gsize read = 0;

		g_io_channel_read_chars (dumper->chan, buf, 1, &read, NULL);
		if (read == 1)
			g_string_append_c (str, buf[0]);
	}

	return state;
}

static InState
read_name_until_new_state (SmartboyDumper *dumper)
{
	GString *str;
	InState state;

	str = g_string_new (NULL);
	state = read_until_new_state (dumper, str);

	if (dumper->rom_name == NULL) {
		g_string_set_size (str, str->len - strlen(tags[state]));
		dumper->rom_name = g_string_free (str, FALSE);
		g_print ("*** Got ROM name: %s\n", dumper->rom_name);
	} else {
		g_string_free (str, TRUE);
	}

	g_debug ("New state after name: %s", tags[state]);

	return state;
}

static InState
read_size_until_new_state (SmartboyDumper *dumper)
{
	GString *str;
	InState state;

	str = g_string_new (NULL);
	state = read_until_new_state (dumper, str);

	if (dumper->nr_banks == -1) {
		dumper->nr_banks = g_ascii_strtoll (str->str, NULL, 10);
		g_print ("*** Got ROM Size: %d bytes (%d x %dkB)\n",
			 dumper->nr_banks * BANK_SIZE,
			 dumper->nr_banks,
			 BANK_SIZE / 1024);
	}
	g_string_free (str, TRUE);

	g_debug ("New state after ROM Banks: %s", tags[state]);

	return state;
}

static gboolean
fd_watch (GIOChannel *source,
	  GIOCondition condition,
	  gpointer data)
{
	SmartboyDumper *dumper = data;
	char buf[1];
	gsize bytes_read = 0;

	if (condition & G_IO_ERR) {
		g_warning ("Error reading from device");
		g_main_loop_quit (dumper->loop);
		return FALSE;
	}

	if (dumper->nr_banks > 0 &&
	    dumper->rom_name != NULL &&
	    dumper->state == IN_STARTROM &&
	    dumper->tag_pos == -1) {
		GByteArray *buf;
		int rom_size = dumper->nr_banks * BANK_SIZE;
		char *filename;

		g_print ("*** Starting ROM dumping\n");

		g_print ("***  00%%");

		buf = g_byte_array_new ();
		while (buf->len < rom_size) {
			char *rom;
			gsize read;

			rom = g_malloc0 (rom_size - buf->len);
			g_io_channel_read_chars (dumper->chan, rom, rom_size - buf->len, &read, NULL);

			g_print ("\b\b\b%02d%%", buf->len * 100 / rom_size);
			g_byte_array_append (buf, (const guint8 *) rom, read);
			g_free (rom);
		}

		g_print ("\b\b\b100%%\n");

		filename = create_filename (dumper->rom_name, buf);
		g_print ("*** Saving '%s'\n", filename);

		g_file_set_contents (filename, (char *) buf->data, rom_size, NULL);

		g_print ("*** Wrote '%s'\n", filename);
		g_byte_array_free (buf, TRUE);
		g_free (filename);

		g_main_loop_quit (dumper->loop);

		return FALSE;
	}

	if (dumper->rom_name != NULL &&
	    dumper->nr_banks > 0 &&
	    dumper->rom_req == FALSE) {
		const char *sd = "sd";
		dumper->rom_req = TRUE;
		g_assert (g_io_channel_write_chars (dumper->chan,
					  sd, sizeof(sd), NULL, NULL) == G_IO_STATUS_NORMAL);

		g_print ("*** Requesting ROM\n");
		return TRUE;
	}

	/* Finished read a tag? */
	if (dumper->tag_pos == -1) {
		switch (dumper->state) {
		case IN_NM:
			g_debug ("Reading name until new state");
			dumper->state = read_name_until_new_state (dumper);
			break;
		case IN_RB:
			g_debug ("Reading ROM banks until new state");
			dumper->state = read_size_until_new_state (dumper);
			break;
		case IN_NR:
			g_debug ("Resetting and waiting for ROM");
			g_clear_pointer (&dumper->rom_name, g_free);
			dumper->nr_banks = -1;
			dumper->rom_req = FALSE;
			if (!dumper->cart_req) {
				g_print ("*** Insert cartridge\n");
				dumper->cart_req = TRUE;
			}
			break;
		case IN_STARTROM:
			/* Shouldn't happen, it's handled earlier */
			/* fallthrough */
		default:
			g_assert_not_reached ();
		}

		if (dumper->state != IN_NR)
			return TRUE;
	}

	g_io_channel_read_chars (source, buf, 1, &bytes_read, NULL);
	if (bytes_read < 1)
		return TRUE;

	if (dumper->state == IN_NONE) {
		guint i;
		/* Look for the start of a tag */
		for (i = 1; i < G_N_ELEMENTS (tags); i++) {
			if (buf[0] == tags[i][0]) {
				dumper->state = i;
				g_assert (dumper->tag_pos == 0);
				g_debug ("Possible new state %s", tags[dumper->state]);
				break;
			}
		}
	} else {
		if (dumper->tag_pos >= 0) {
			char tag[10];
			InState new_possible_state;
			guint i;

			/* Reconstruct the start of the tag */
			for (i = 0; i <= dumper->tag_pos; i++)
				tag[i] = tags[dumper->state][dumper->tag_pos];
			tag[dumper->tag_pos + 1] = buf[0];
			tag[dumper->tag_pos + 2] = '\0';

			new_possible_state = prefix_get_tag (tag);
			if (new_possible_state != IN_NONE &&
			    new_possible_state != dumper->state) {
				g_debug ("New possible state is %s, was %s",
					 tags[new_possible_state], tags[dumper->state]);
				dumper->state = new_possible_state;
			}

			if (tags[dumper->state][dumper->tag_pos + 1] == buf[0]) {
				/* Next letter in tag matches */

				dumper->tag_pos++;
				if (dumper->tag_pos == (strlen (tags[dumper->state]) - 1)) {
					/* Tag is complete */
					g_debug ("State %s complete", tags[dumper->state]);
					dumper->tag_pos = -1;
					if (dumper->state == IN_NR && !dumper->cart_req) {
						g_print ("*** Insert cartridge\n");
						dumper->cart_req = TRUE;
					} else {
						dumper->cart_req = FALSE;
					}
				} else {
					dumper->tag_pos++;
				}
			} else {
				/* reset tag */
				g_debug ("Old state %s not found, resetting (read %c, expected %c)", tags[dumper->state], buf[0], tags[dumper->state][dumper->tag_pos + 1]);
				dumper->state = IN_NONE;
				dumper->tag_pos = 0;
			}
		}
	}

	return TRUE;
}



int main (int argc, char **argv)
{
	int fd;
	GIOChannel *chan;
	GMainLoop *loop;
	SmartboyDumper *dumper;
	g_autoptr(GOptionContext) option_context = NULL;
	g_autoptr(GError) error = NULL;
	g_autofree char *device = g_strdup ("/dev/ttyACM0");
	gboolean verbose = FALSE;
	gboolean ret;
	const GOptionEntry options[] = {
		{ "device", 'd', 0, G_OPTION_ARG_STRING, &device, "Serial device to use (/dev/ttyACM0 by default)", NULL },
		{ "verbose", 'v', 0, G_OPTION_ARG_NONE, &verbose, "Show extra debugging information", NULL },
		{ NULL}
	};

	option_context = g_option_context_new ("");
	g_option_context_add_main_entries (option_context, options, NULL);

	ret = g_option_context_parse (option_context, &argc, &argv, &error);
	if (!ret) {
		g_print ("Failed to parse arguments: %s\n", error->message);
		return EXIT_FAILURE;
	}

	if (verbose)
		g_setenv ("G_MESSAGES_DEBUG", "all", TRUE);

	loop = g_main_loop_new (NULL, TRUE);

	fd = open (device, O_RDWR | O_NONBLOCK | O_NDELAY | O_NOCTTY);
	if (fd < 0) {
		g_warning ("Failed to open device %s", device);
		return 1;
	}

	g_print ("*** Opened device %s\n", device);

	chan = g_io_channel_unix_new (fd);
	g_io_channel_set_encoding (chan, NULL, NULL);
	g_io_channel_set_buffered (chan, FALSE);

	dumper = smartboy_dumper_new ();
	dumper->chan = chan;
	dumper->loop = loop;

	g_io_add_watch (chan, G_IO_IN | G_IO_PRI | G_IO_ERR, fd_watch, dumper);

	g_main_loop_run (dumper->loop);

	smartboy_dumper_free (dumper);

	return 0;
}
