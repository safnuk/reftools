PREFIX = /usr/local
BIN = $(PREFIX)/bin

install:
	install  latexmake $(BIN)/latexmake

install-arch: install
	install latexwatch-arch $(BIN)/latexwatch

install-mac: install
	install latexwatch-mac $(BIN)/latexwatch

uninstall:
	rm -vf $(BIN)/{latexmake,latexwatch}
