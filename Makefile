SOURCE = main
FILEXTS = aux log out pdf  bbl blg fls xmpi cut fdb_latexmk synctex.gz

all: $(SOURCE).tex
	pdflatex $<
	bibtex $(SOURCE)
	pdflatex $<

.PHONY:
clean:
	@for ext in $(FILEXTS) ; do \
		rm -f $(SOURCE).$$ext 2>/dev/null ; \
	done || true
