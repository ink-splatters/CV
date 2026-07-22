# Source and output files
TYP := cv.typ
PDF := cv.pdf

# Guard function to ensure nix-shell environment
define check-nix-env
	$(if $(IN_NIX_SHELL),,$(error Run 'nix develop' first))
endef

# Build the PDF from Typst source
$(PDF): $(TYP)
	@$(check-nix-env)
	typst compile $< $@

.PHONY: build
build: $(PDF) ## build PDF

.PHONY: open
open: build ## open PDF
	open $(PDF)

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