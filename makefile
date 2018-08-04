PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install nama-gui.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin/
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p nama-gui $(DESTDIR)$(PREFIX)/bin/
	@cp -p nama-gui.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/nama-gui

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/nama-gui
	@rm -rf $(DESTDIR)$(MANDIR)/man1/nama-gui.1*
