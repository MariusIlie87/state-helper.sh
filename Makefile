PREFIX ?= $(HOME)/.local
BINDIR ?= $(PREFIX)/bin
NAME   ?= state-helper
SRC    ?= state-helper.sh

.PHONY: install uninstall

install:
	mkdir -p $(BINDIR)
	cp $(SRC) $(BINDIR)/$(NAME)
	chmod 755 $(BINDIR)/$(NAME)

uninstall:
	rm -f $(BINDIR)/$(NAME)
