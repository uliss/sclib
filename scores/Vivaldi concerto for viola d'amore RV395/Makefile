LY := lilypond
OPTIONS = --pdf
DEPS := src.violadamore.ly info.ly
NAME_PREFIX := Vivaldi\ concerto\ for\ viola_damore\ RV395
NAME_VLN1 := $(NAME_PREFIX)_vln1
NAME_VLN2 := $(NAME_PREFIX)_vln2
NAME_VIOLA := $(NAME_PREFIX)_vla
NAME_BASS := $(NAME_PREFIX)_basso
NAME_SCORE := $(NAME_PREFIX)_score
NAME_PARTS := $(NAME_PREFIX)_all_parts

all: violin1 violin2 viola basso score

parts: $(NAME_PARTS).pdf

violin1: $(NAME_VLN1).pdf

violin2: $(NAME_VLN2).pdf

viola: $(NAME_VIOLA).pdf

basso: $(NAME_BASS).pdf

score: $(NAME_SCORE).pdf

$(NAME_VLN1).pdf: violinI.ly src.violinI.ly $(DEPS)
	$(LY) $(OPTIONS) --output $(NAME_VLN1) $<

$(NAME_VLN2).pdf: violinII.ly src.violinII.ly $(DEPS)
	$(LY) $(OPTIONS) --output $(NAME_VLN2) $<

$(NAME_VIOLA).pdf: viola.ly src.viola.ly $(DEPS)
	$(LY) $(OPTIONS) --output $(NAME_VIOLA) $<

$(NAME_BASS).pdf: basso.ly src.basso.ly $(DEPS)
	$(LY) $(OPTIONS) --output $(NAME_BASS) $<

$(NAME_SCORE).pdf: score.ly src.violinI.ly src.violinII.ly src.viola.ly src.basso.ly $(DEPS)
	$(LY) $(OPTIONS) --output $(NAME_SCORE) $<

$(NAME_PARTS).pdf: $(NAME_VLN1).pdf $(NAME_VLN2).pdf $(NAME_VIOLA).pdf $(NAME_BASS).pdf
	pdfunite $(NAME_VLN1).pdf $(NAME_VLN2).pdf $(NAME_VIOLA).pdf $(NAME_BASS).pdf $(NAME_PARTS).pdf

.PHONY clean:
	rm -rf *.pdf
