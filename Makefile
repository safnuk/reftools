PREFIX = /usr/local
BIN = $(PREFIX)/bin

install:
	install  latexmake $(BIN)/latexmake

install-arch: install

install-mac: install

uninstall:
	rm -vf $(BIN)/latexmake
