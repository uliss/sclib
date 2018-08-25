\version "2.18.2"

bassPartA = \relative c {
    \clef bass
    \key c \dorian
    \time 3/4
    c2. ~ c ~  c ~ c |
    c ~ c ~ c ~ c |
    c ~ c ~ c ~ c |
    c ~  c ~  c ~  c ~  c ~  c ~  c  |
     c ~ c ~ c ~ c ~ c |
    c c as as2 a4 g2. 
    R2.\fermataMarkup
    es'2.~ es ~ es ~ es ~ es ~ es ~ es ~ es ~ es ~ es
    es es c2 f4 bes,2. |
    es2. g, as as as4 bes2 |
    es,2. |
    as2. ~ as ~ as ~ as
    as2 bes4 c2 f,4 as bes2 |
    es4. des8 c4 des es es, 
    as2 bes4 c2 f,4 |
    as bes2 es,4 es' f g4. es8 f4 ~ f8 es d4 c |
    b c2 |
    g2. ~ g g ~ g |
    g ~ g ~ g ~ g |
    g ~ g g ~ g |
    c,4 r r R2.\fermataMarkup \bar "|."|
}