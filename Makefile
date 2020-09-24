smartboy-dumper: smartboy-dumper.c
	gcc -Wall -g -o $@  $< `pkg-config --libs --cflags glib-2.0`

clean:
	rm -f smartboy-dumper
