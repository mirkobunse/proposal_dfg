MAIN=form_53_20_en
PDFLATEX=pdflatex -interaction=nonstopmode -halt-on-error

$(MAIN).pdf: $(MAIN).tex sources.bib proposal.sty
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	rm -f $(MAIN).pdf *.aux *.bcf *.log *.out *.run.xml

.PHONY: clean
