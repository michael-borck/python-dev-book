.PHONY: preview build deploy clean all

# Default target
all: build

# Launch preview server
preview:
	quarto preview

# Build the book locally
build:
	quarto render

# Build and deploy to GitHub Pages
deploy: build
	quarto publish gh-pages

# Clean build artifacts
clean:
	rm -rf _book/
	rm -rf .quarto/

# Build PDF only
pdf:
	quarto render --to pdf

# Build EPUB only
epub:
	quarto render --to epub

# Build HTML only
html:
	quarto render --to html