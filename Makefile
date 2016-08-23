all: CV.pdf NSF_CV.pdf

CV.pdf: CV.tex
	pdflatex CV.tex

NSF_CV.pdf: NSF_CV.tex
	pdflatex NSF_CV.tex
