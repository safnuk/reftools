PREFIX = /usr/local
BIN = $(PREFIX)/bin

install:

install-arch: install
	install -D llpp-watch $(BIN)/

install-mac: install

uninstall:
	rm -f $(BIN)/llpp-watch
