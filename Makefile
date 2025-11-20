# Find all .typ files and convert to .pdf targets
TYPS := $(wildcard *.typ)
PDFS := $(TYPS:.typ=.pdf)

# Guard function to ensure nix-shell environment
define check-nix-env
	$(if $(IN_NIX_SHELL),,$(error Run 'nix develop' first))
endef

# Pattern rule: build any PDF from corresponding Typst source
%.pdf: %.typ
	@$(check-nix-env)
	typst compile $< $@

.PHONY: build
build: $(PDFS) ## build all PDFs

.PHONY: open
open: cv.pdf ## open CV
	open cv.pdf

.PHONY: letter-open
letter-open: cover-letter.pdf ## open cover letter
	open cover-letter.pdf

.PHONY: rebuild
rebuild: clean build ## rebuild CV

.PHONY: format
format: ## format code
	nix fmt .

.PHONY: fmt
fmt: format ## alias for format

.PHONY: clean
clean: ## remove generated PDFs
	$(RM) *.pdf

# Delete targets on error to prevent partial builds
.DELETE_ON_ERROR:

# Disable built-in implicit rules
.SUFFIXES:

.DEFAULT_GOAL := build

.PHONY: help
help: ## show this help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)