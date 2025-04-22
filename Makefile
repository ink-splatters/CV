.PHONY: all clean fmt open

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
	nix fmt .
	typstyle format-all
