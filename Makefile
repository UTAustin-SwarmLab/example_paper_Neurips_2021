TEX = pdflatex
TARGET = Cheng.Pavone.ea.Neurips.2021
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
