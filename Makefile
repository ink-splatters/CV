# Root-level Typst sources and their PDF outputs
TYPS := $(wildcard *.typ)
PDFS := $(TYPS:.typ=.pdf)

# Guard function to ensure nix-shell environment
define check-nix-env
	$(if $(IN_NIX_SHELL),,$(error Run 'nix develop' first))
endef

# Build a PDF from its corresponding Typst source
%.pdf: %.typ lib/lib.typ
	@$(check-nix-env)
	typst compile $< $@

.PHONY: build
build: $(PDFS) ## build all PDFs

.PHONY: open
open: build ## open CV
	open cv.pdf

.PHONY: letter-open
letter-open: build ## open cover letter
	open cover-letter.pdf

.PHONY: all
all: build open ## build all PDFs and open CV

.PHONY: rebuild
rebuild: clean build ## rebuild all PDFs

.PHONY: format
format: ## format code
	nix fmt .

.PHONY: fmt
fmt: format ## alias for format

.PHONY: clean
clean: ## remove generated PDFs
	$(RM) $(PDFS)

# Delete targets on error to prevent partial builds
.DELETE_ON_ERROR:

# Disable built-in implicit rules
.SUFFIXES:

.DEFAULT_GOAL := build

.PHONY: help
help: ## show this help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)