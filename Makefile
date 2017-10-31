chapter.pdf: chapter.tex references.bib
	pdflatex -shell-escape chapter.tex
	pdflatex -shell-escape chapter.tex
	bibtex chapter
	pdflatex -shell-escape chapter.tex
