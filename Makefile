SRC_MACRO  = macro.tex
SRC_MAIN   = critto.tex
SRC_TOC    = critto.toc
SRC        = appendice.tex
SRC       += pratici.tex
SRC       += modi.tex
SRC       += random.tex
SRC       += autenticazione.tex

TARGETS = critto.pdf

all: $(TARGETS)

%.dvi: %.tex
	tex $^

%.ps: %.dvi
	dvips $^ -o

critto.toc: $(SRC_MAIN) $(SRC)
	pdftex $(SRC_MAIN)
	rm critto.pdf

critto.pdf: $(SRC_MAIN) $(SRC_MACRO) $(SRC_TOC) $(SRC)
	pdftex -output-format pdf $(SRC_MAIN)

clean:
	rm -f $(TARGETS)
