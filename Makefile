.PHONY: all clean fmt format open letter-open

TYP := cv.typ introductie.typ
PDF := cv.pdf introductie.pdf

%.pdf: %.typ
	typst compile $< $@

all: $(PDF)

open: cv.pdf
	open cv.pdf

intro-open: introductie.pdf
	open introductie.pdf

clean:
	rm -f $(PDF)

fmt:
	nix fmt $(CURDIR)
	typstyle $(CURDIR) -i
format: fmt

