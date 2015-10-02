.PHONY: clean

ifeq "$(REFNAME)" ''
	REFNAME=references.bib
endif

%.pdf: %.tex $(REFS) $(DEPENDS)
	rubber -f --pdf -s --jobname tmp $<
	@if [ -f tmp.pdf ]; then \
		mv -v tmp.pdf $@ ;\
	fi
	rubber-info --check tmp.log

#tags: *.tex
#	ctags --langdef=latex --langmap=latex:.tex '--regex-latex=/\\label\{([^}]*)\}/\1/l,label/' *.tex

clean:
	rm -rf tmp.* *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags *.synctex.gz

full-clean: clean
	rm -rf *.pdf
