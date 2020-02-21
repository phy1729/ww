CFLAGS += -Wall -Werror -Wformat=2 -Wshadow -Wpointer-arith \
	-Wcast-qual -Wstrict-aliasing=2 -Wwrite-strings -Wstack-protector

all: ww

install: all
	$(INSTALL) ww $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) -m 0644 ww.1 $(DESTDIR)$(PREFIX)/share/man/man1

clean:
	rm -f ww

.PHONY: all clean install
