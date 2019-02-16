PREFIX ?= /usr
CHAR ?= ➜

all:
	@mkdir -p build
	@cp -p promptless.sh build/promptless
	@sed -i s/➜/$(CHAR)/ build/promptless
	@echo Compiled binary in ./build/

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p build/promptless $(DESTDIR)$(PREFIX)/bin/promptless.sh
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/promptless.sh

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/promptless.sh
