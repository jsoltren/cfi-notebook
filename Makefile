PDFLATEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
TEX = latex

.PHONY: all clean

all : notebook.toc notebook.pdf

bibliography:
	biber notebook

notebook.toc :
	$(TEX) notebook.tex

notebook.pdf : resources/* notebook.toc bibliography
	$(PDFLATEX) notebook.tex
	open notebook.pdf

clean :
	git clean -xdf
