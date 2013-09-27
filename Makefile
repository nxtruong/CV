BUILDDIR = build
DOC1 = Buscombe_CV_full
DOC2 = Buscombe_1pgCV
DOC1S = $(DOC1).tex
DOC2S = $(DOC2).tex

all: pdf pdf2 view

pdf: $(DOC1S)
	-mkdir $(BUILDDIR)
	pdflatex -output-directory=$(BUILDDIR) $(DOC1S)

pdf2: $(DOC2S)
	pdflatex -output-directory=$(BUILDDIR) $(DOC2S)

clean:
	rm -rf $(BUILDDIR)

view:
	okular $(BUILDDIR)/$(DOC1).pdf
