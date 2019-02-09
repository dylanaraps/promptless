PREFIX ?= /usr
CHAR ?= ➜

all:
	@mkdir -p build
	@cp -p promptless.sh build/promptless
	@sed -i s/➜/$(CHAR)/ build/promptless

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p promptless.sh $(DESTDIR)$(PREFIX)/bin/promptless.sh
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/promptless.sh

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/promptless.sh
