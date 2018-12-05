smartboy-dumper: smartboy-dumper.c
	gcc -Wall -o $@  $< `pkg-config --libs --cflags glib-2.0`
