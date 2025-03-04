chapter.pdf: chapter.tex references.bib
	rm -f *.aux *.toc chapter.pdf *.bbl *.blg *.log *.out
	pdflatex -shell-escape chapter.tex
	pdflatex -shell-escape chapter.tex
	bibtex chapter
	pdflatex -shell-escape chapter.tex
	pdflatex -shell-escape chapter.tex
