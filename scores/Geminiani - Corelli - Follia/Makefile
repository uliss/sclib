LILY=/Applications/LilyPond.app/Contents/Resources/bin/lilypond
FLAGS=-dno-point-and-click --pdf
DEPS := $(shell ls *.ily)
SRC := $(shell ls *.ly)
PDF := $(SRC:.ly=.pdf)
TITLE := $(shell cat info.ily | grep 'title ' | cut -d= -f2 | head -1 |  sed -e "s/'/\\\\'/g" | xargs echo | sed 's/ /\\ /g')
COMPOSER := $(shell cat info.ily | grep 'composer ' | head -1 |  sed -e "s/'/\\\\'/g" | cut -d= -f2 | xargs echo | sed 's/ /\\ /g')
FNAME := $(COMPOSER).\ $(TITLE)
PDFS := $(foreach program,$(PDF),$(FNAME)\ -\ $(program))

.PHONY: all zip clean

all: $(PDF)

%.pdf: %.ly $(DEPS)
	$(LILY) $(FLAGS) $<
	cp $@ $(FNAME)\ -\ $@

clean:
	rm -rf *.pdf *.zip

zip: all
	zip $(FNAME).zip $(COMPOSER)*.pdf
