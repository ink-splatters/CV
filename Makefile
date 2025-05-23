.PHONY: all clean fmt open letter-open

TYP := cv.typ cover-letter.typ
PDF := cv.pdf cover-letter.pdf

%.pdf: %.typ
	typst compile $< $@

all: $(PDF)

open: cv.pdf
	open cv.pdf

letter-open: cover-letter.pdf
	open cover-letter.pdf

clean:
	rm -f $(PDF)

fmt:
	nix fmt .
	typstyle . -i
