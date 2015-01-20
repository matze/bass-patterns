.PHONY: clean
SRC=bass-patterns.tex
PDF=bass-patterns.pdf

all: $(PDF)

%.pdf: %.tex
	@xelatex $<

clean:
	@rm -f $(PDF) $(PDF:.pdf=.aux) $(PDF:.pdf=.log)
