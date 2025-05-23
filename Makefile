.PHONY: all clean fmt format open letter-open

TYP := cv.typ cover-letter.typ
PDF := cv.pdf cover-letter.pdf

%.pdf: %.typ
	typst compile $< $@

.PHONY: build
build: $(PDF) ## build PDF

open: cv.pdf
	open cv.pdf

letter-open: cover-letter.pdf
	open cover-letter.pdf

.PHONY: all
all: build open ## build and open PDF

.PHONY: rebuild
rebuild: clean build ## rebuild PDF

.PHONY: format
format: ## format code
	nix fmt .

.PHONY: fmt
fmt: format ## alias for format

.PHONY: clean
clean: ## remove generated files
	$(RM) $(PDF)

# Delete targets on error to prevent partial builds
.DELETE_ON_ERROR:

# Disable built-in implicit rules
.SUFFIXES:

.DEFAULT_GOAL := build

.PHONY: help
help: ## show this help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)