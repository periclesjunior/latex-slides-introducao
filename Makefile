LATEXMK=latexmk
LATEXARGS=-pdf
MAIN=apresentacao-latex
VIEW=evince
EDIT=vim

all: $(MAIN).pdf

view: $(MAIN).pdf
	$(VIEW) $(MAIN).pdf &

edit: $(MAIN).tex
	$(EDIT) $(MAIN).tex

$(MAIN).pdf: $(MAIN).tex 
	$(LATEXMK) $(LATEXARGS) $(MAIN).tex
clean:
	$(RM) $(MAIN).pdf *.aux *.fdb_latexmk *.log *.out *.nav *.snm *.toc *.vrb *.fls *~
