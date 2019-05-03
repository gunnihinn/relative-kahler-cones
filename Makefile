main.pdf: main.bbl
	pdflatex -halt-on-error main.tex > /dev/null

main.bbl: main.bib main.log
	bibtex main > /dev/null

main.log: main.aux
	pdflatex -halt-on-error main.tex > /dev/null

main.aux: main.tex
	pdflatex -halt-on-error main.tex > /dev/null

.PHONY: clean
clean:
	rm -f main.aux main.bbl main.log main.blg main.out main.synctex.gz
