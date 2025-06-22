.PHONY: all clean fmt format open

TYP := cv.typ
PDF := cv.pdf

%.pdf: %.typ
	typst compile $< $@

all: $(PDF)

open: cv.pdf
	open cv.pdf
clean:
	rm -f $(PDF) $(TYP)
fmt:
	nix fmt $(CURDIR)
	typstyle $(CURDIR) -i

format: fmt

