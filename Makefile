.PHONY: all clean fmt

TYP := cv.typ
PDF := cv.pdf

$(PDF): $(TYP)
	typst compile $< $@

all: $(PDF)

clean:
	rm -f $(PDF)

fmt:
	nix fmt .
	typstyle format-all
