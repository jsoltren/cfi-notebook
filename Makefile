PDFLATEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
TEX = latex

.PHONY: all clean

all : notebook.toc notebook.pdf

multi : notebook.toc multi.pdf

bibliography:
	biber notebook

notebook.toc :
	$(PDFLATEX) notebook.tex

notebook.pdf : resources/* notebook.toc bibliography
	$(PDFLATEX) notebook.tex
	open notebook.pdf

multi.pdf : resources/multi-engine.tex notebook.toc bibliography
	$(PDFLATEX) multi.tex
	open multi.pdf

clean :
	git clean -xdf
