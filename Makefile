PDFLATEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
TEX = latex

.PHONY: all clean

all : notebook.toc notebook.pdf

notebook.toc :
	$(TEX) notebook.tex

notebook.pdf : resources/* notebook.toc
	$(PDFLATEX) notebook.tex

clean :
	rm -f notebook.aux
	rm -f notebook.dvi
	rm -f notebook.log
	rm -f notebook.pdf
	rm -f notebook.toc
