.PHONY: clean
SRC=bass-patterns.lytex
TEX=build/bass-patterns.tex
PDF=build/bass-patterns.pdf

all: $(PDF)

$(PDF): $(TEX)
	@cd build; xelatex $(shell basename $<)

$(TEX): $(SRC)
	@lilypond-book --output=build --pdf --latex-program=xelatex $<
 
clean:
	@rm -rf build/
