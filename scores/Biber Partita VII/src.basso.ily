\version "2.24.0"

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
    R2.\fermata
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
    c,4 r r R2.\fermata \bar "|."|
}

bassPartB = \relative c {
    \key c \dorian
    \clef bass
    \time 4/4
    \repeat volta 2 {
        \partial 8 { r16 c }
        c2 es d c es8 f g g, c4 r16 c d es |
        c4 r16 as bes c as4 c |
        bes r16 g'16 f es f4 d |
        es8 as, bes4 es,16 es' d c d4 |
        es f g c, g2 ~ g4.
    }
    \repeat volta 2 {
        r16 g' |
        g4. g8 c,4 d  es8 f g4 c,8 es f4 |
        bes, c d8 es f4 |
        bes,8 c d d, g' f e4 |
        f8 bes c4 f,8 as bes4 |
        es,4. g,8 as a bes b c4 r16 g' d f es8. f16 g8 g, |
        c4. c8 c,4.
    }
}

bassPartC = \relative c {
    \key c \dorian
    \clef bass
    \time 3/4
    \repeat volta 2 {
        c2 b4
        c2 d4 es2 f4 |
        g4. as8 g f es d c4 d  es g, as bes c f, bes2 es,4
    }
    \repeat volta 2 {
        g'2 c,4 f2 d4 |
        g es2 |
        f2 bes,8 as |
        g2 as8 g |
        f2 bes8 as |
        g2 c,4 g'2 c,4 |
        g'2 as8 g |
        f2 bes8 as |
        g2 c,4 |
        g'2 c,4
    }
}

bassPartD = \relative c {
    \key c \dorian
    \clef bass
    \time 4/4
    \repeat volta 2 {
        R1 * 4
        r8 g' f8. d16 es8. c16 bes8. g16 as8. c16 f8. as,16 g8. es'16 d8. c16 b8. g16 a8. b16 c8. es16 d8. es16 |
        f8. es16 d8. d16 es8. es16 f8. f16 |
        g4 r c, r |
        f r es bes |
        es d c d |
        es8. bes16 c8. d16 g,4 r |
        r2 r8 d' c8. a16 bes4 a g8. g'16 f8. d16 |
        es8. g16 c8. es,16 d8. bes'16 c,8. a'16 |
        bes,8. g'16 a,8. fis'16 g,8. bes'16 a4 |
        g8. d16 c8. a16 bes8. c16 d4 |
        g,1
    }
    \repeat volta 2 {
        g8.  g16 a8. b16 c8. c16 d8. es16 |
        f8. es16 d8. d16 es4 d c bes as bes |
        es d c bes as bes es d |
        c d g,8. g16 a8. b16 |
        c4 r r2 |
        R1
        r2
        g8. g16 a8. b16 c8. c16 d8. es16 f8. es16 d8. d16 es8. g16 f8. d16 es8. c16 bes8. g16 |
        a8. c16 f8. a,16 g8. es'16 d8. c16 |
        b8. c16 d,4 c r |
        R1
        g'8. g16 a8. b16 c4 r |
        c8. c16 d8. es16 f8. f16 g8. as16 |
        bes8. as16 g8. g16 as8. c16 bes8. g16 |
        as8. f16 es8. c16 des4 es |
        as,8. as16 bes8. c16 f,4 g |
        c,1\fermata
    }
}

bassPartE = \relative c {
    \key c \dorian
    \clef bass
    \time 4/4
    as'4. g8 f8. es16 f16 f es es |
    des4. c16 des es8 es, as4 |
    as'4. g8 f8. es16 f16 f es es |
    des4. c16 des es8 es, as4 |

    \repeat volta 2 {
        es'4. d8 c8. bes16 c c bes bes |
        as8 bes g as bes4. es,8 |
        bes' es, bes' es, bes'4. es,8 |
        bes'2 es,4 as |
        bes8 es, bes' es, bes'4. es,8 |
        bes'2 es,2
    }

    \repeat volta 2 {
        c'8. c16 des8. des16 c8. c16 bes8. bes16 as8. as16  bes8 es, f4 bes |
        c r des r |
        r8 des es es, as4. bes8 c4 r des r |
        r8 des es es, as2
    }
}

bassPartF = \relative c {
    \key c \dorian
    \clef bass
    \time 6/8
    \repeat volta 2 {
        as4 as8 bes4  c8 des4 des8 es4. c8 as4 bes c8 |
        des f4 es4.
    }
    \repeat volta 2 {
        g,4 as8 bes4 as8 |
        g4 as8 bes4 as8 |
        g c4 f, g8 as bes4 es,4.
    }
    \repeat volta 2 {
        c'8 as4 bes4 c8 |
        c as4 bes c8 |
        c as4 bes c8 des es es, as4.
    }
}

bassTheme = {
    \relative c {
        c2 bes4 as2 g4 as bes2
        es,2.
        as2 g4 f2 es4 f g2 c,2.
    }
}

bassPartG = \relative c {
    \key c \dorian
    \clef bass
    \time 3/4
    \repeat volta 2 { \bassTheme }
    \repeat volta 2 { \bassTheme }
    \repeat volta 2 { \bassTheme }
    \repeat volta 2 { \bassTheme }
    \repeat volta 2 { \bassTheme }
    \repeat volta 2 { \bassTheme }
    \repeat volta 2 { \bassTheme }
    \scaleDurations 3/2
    \repeat volta 2 {
        \relative c {
            c2 bes4 as2 g4 as bes2
            es,2.
            as2 g4 f2 es4 f g2 c,2.
        }
    }
    \scaleDurations 3/2
    \repeat volta 2 {
        \relative c {
            c2 bes4 as2 g4 as bes2
            es,2.
            as2 g4 f2 es4 f g2 c,2.
        }
    }
    \repeat volta 2 { \bassTheme }
    \repeat volta 2 { \bassTheme }
    \bassTheme
    \bassTheme
}