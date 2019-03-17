PN = kodi-prevent-xscreensaver

PREFIX ?= /usr
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1
SHADIR = $(PREFIX)/share/applications

RM = @rm

all:
	@echo -e '\033[1;32mInstalling...\033[0m'
	install -Dm755 common/$(PN) "$(DESTDIR)$(BINDIR)/$(PN)"
	install -Dm644 common/$(PN).desktop "$(DESTDIR)$(SHADIR)/$(PN).desktop"
	install -Dm644 doc/$(PN).1 "$(DESTDIR)$(MANDIR)/$(PN).1"
	gzip -9 "$(DESTDIR)$(MANDIR)/$(PN).1"

uninstall:
	$(RM) "$(DESTDIR)$(BINDIR)/$(PN)"
	$(RM) "$(DESTDIR)$(SHADIR)/$(PN).desktop"
	$(RM) "$(DESTDIR)$(MANDIR)/$(PN).1.gz"

install: all
