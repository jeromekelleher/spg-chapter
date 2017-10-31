chapter.pdf: chapter.tex references.bib
	pdflatex chapter.tex
	pdflatex chapter.tex
	bibtex chapter
	pdflatex chapter.tex
