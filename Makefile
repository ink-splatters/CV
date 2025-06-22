.PHONY: all clean fmt format open letter-open

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
	rm -f $(TYP)

fmt:
	nix fmt $(CURDIR)
	typstyle $(CURDIR) -i
format: fmt

