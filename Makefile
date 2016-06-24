SRC_MACRO  = macro.tex
SRC_MAIN   = critto.tex
SRC        = critto.toc
SRC       += appendice.tex
SRC       += pratici.tex
SRC       += modi.tex
SRC       += random.tex
SRC       += autenticazione.tex

TARGETS = critto.pdf

%.dvi: %.tex
	tex $^

%.ps: %.dvi
	dvips $^ -o

critto.pdf: $(SRC_MAIN) $(SRC_MACRO) $(SRC)
	pdftex -output-format pdf $(SRC_MAIN)

clean:
	rm -f $(TARGETS)
