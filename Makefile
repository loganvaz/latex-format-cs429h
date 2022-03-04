# This is a simple Makefile for processing your LaTeX document.
LATEX = pdflatex
BIBTEX = bibtex

# Rename FILEBASE to the base name of your document (i.e., the file name without the .tex extension).
FILEBASE = term-paper-template

# Typing 'make' or 'make pdf' will process your document and produce a corresponding PDF file.
pdf: ${FILEBASE}.tex ${FILEBASE}.bib
	${LATEX} ${FILEBASE}
	${BIBTEX} ${FILEBASE} || true
	${LATEX} ${FILEBASE}
	${LATEX} ${FILEBASE}

# Typing 'make clean' will remove any ancillary files.
clean:
	rm -f ${FILEBASE}.{pdf,log,aux,out,bbl,blg}