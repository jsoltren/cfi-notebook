TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

.PHONY: all clean

all : notebook.pdf

resume.pdf : resources/*
	$(TEX) notebook.tex

clean :
	rm -f notebook.pdf
	rm -f notebook.aux
	rm -f notebook.toc
	rm -f notebook.log
