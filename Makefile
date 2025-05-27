.PHONY: all clean fmt format open

TYP := cv.typ
PDF := cv.pdf

$(PDF): $(TYP)
	typst compile $< $@

all: $(PDF)

open: $(PDF)
	open $(PDF)

clean:
	rm -f $(PDF)

fmt:
	nix fmt $(CURDIR)
	typstyle $(CURDIR) -i
format: fmt

