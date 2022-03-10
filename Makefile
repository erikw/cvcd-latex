PDF=cv.pdf

.PHONY: all clean help

# target: all - Default target. Build all PDF.
all: $(PDF)

# target: help - Display all targets.
help:
	egrep "#\starget:" [Mm]akefile  | cut -d " " -f3-

# target: clean - Remove all generated files.
clean:
	latexmk -C 2>&1 | tail -n +5
	$(RM) *.tpt

# Need to generate PDF from .tex again after generating .tpt thumbnails.
# See thumbpdf(1).
%.pdf: %.tex
	latexmk $< 2>&1
	thumbpdf $@
	pdflatex $<
