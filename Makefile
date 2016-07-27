# to refresh the glossary must run pdflatex twice

TEX=pdflatex
TEXFLAGS=-file-line-error -interaction=nonstopmode

freport: freport.tex
	$(TEX) $(TEXFLAGS) $^
	biber $@
	$(TEX) $(TEXFLAGS) $^

.PHONY: clean

clean:
	rm *.aux *.glo *.ist *.log *.lot *.out *.toc *.lof
