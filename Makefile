PREFIX ?= /usr
CHAR ?= ➜

all:
	@echo Run \'make install\' to install promptless.

install:
	@echo $(CHAR)
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p promptless.sh $(DESTDIR)$(PREFIX)/bin/promptless.sh
	@sed -i s/➜/$(CHAR)/ $(DESTDIR)$(PREFIX)/bin/promptless.sh
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/promptless.sh

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/promptless.sh
