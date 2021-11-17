TEX = pdflatex
TARGET = neurips_2021_control
#TARGET = Appendix.ICML21.Submission.2044
BIB = bibtex
PDF = ps2pdf
PS = dvips
RM = rm -rf
all:
	$(TEX) $(TARGET).tex
	$(BIB) $(TARGET).aux
	$(TEX) $(TARGET).tex
	$(TEX) $(TARGET).tex
	#$(PS) -t letter $(TARGET).dvi
	#$(PDF) -sPAPERSIZE=letter $(TARGET).ps
clean:
	$(RM) *.out *.aux *.bbl *.dvi *.pdf *.blg *.log *.ps
