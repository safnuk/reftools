PREFIX = /usr/local
BIN = $(PREFIX)/bin
ETC = $(PREFIX)/etc/reftools

install:
	install -D -m 644 latex.mk $(ETC)/latex.mk
	install -D pdflatex-sync $(BIN)/pdflatex

install-arch: install
	install -D llpp-watch $(BIN)/

install-mac: install

uninstall:
	rm -vf $(BIN)/{llpp-watch,pdflatex}
	rm -vrf $(ETC)
