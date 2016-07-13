# to refresh the glossary must run pdflatex twice
freport: freport.tex
	pdflatex $^
	biber $@
	pdflatex $^

.PHONY: clean

clean:
	rm *.aux *.glo *.ist *.log *.lot *.out *.toc *.lof
