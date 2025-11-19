\version "2.24.0"

vdaSecondoPartA  = \relative c' {
    \key c \dorian
    \clef alto
    \tempo Grave
    R2.
    <<
        {
            g'4. f8 es  f g2.
            g4. f8 es  f g4 es4. f8 g f <es g c>4. d'8
        } \\ {
            es,4. d8 c d es2.
            es4. d8 c d es4 c 4. d8 es d c4 s
        }
    >>
    es'8 d c bes as g f[ es] d c f16 g es d |
    \tempo Presto
    c4 r r |
    r16 g' a b c d es f g es f g |
    c,4 r r |
    \repeat unfold 3 { ees,16( g) c( g) }
    \repeat unfold 3 { c,( es) g( es) }
    \repeat unfold 3 { g,( c) es( c)  }
    \repeat unfold 3 { ees,16( g) c( g) }
    es4 r r |
    R2.
    r16 g' a b c d es f g es f g |
    \clef treble
    c, d es f g as bes c g c bes as |
    g4 r r |
    \clef alto
    |
    r16 es f g f es d c b a g f |
    es c' d es d c b a g f es d |
    c es f g f es d c b a g f |
    es c' d es d c b a g f es d |
    c4 r r |
    r8 <<
        { es'8 es es es es es2. }
        \\ { c8 c c c c c2.}
    >>
    \tempo Adagio
    r8 c' c c c4^\strill ~ |
    c8 b
    << {<d, g b>2}\\{g,2}>>
    R2.\fermata |
    r4 r8 bes' as g f es r8 bes' as g f es
    r es' d c bes as g c bes as g f es as g c |
    \tempo Presto
    bes4 r r
    r16 es d c bes as g c bes as g f |
    es c' bes as g c bes as g c bes as |
    g es' d c bes as g c bes as g f |
    es8. es'16 d c bes as g c bes as |
    g es' d c bes as g c bes as  g f |
    es4 r16 bes' c d es g, as bes |
    \tempo Adagio
    es,8 c'
    << { c4.-\strill d8 d2. } \\ {a4.-\strill bes8 bes2.} >>
    R2.
    r16 c16( bes) as( g)  bes( as) c( bes) as( g) f( |
    es) as( g) f( es)  g( f)  as( g) f( es) d( |
    c) f'( es) des( c) es( des) f( es) des( c) bes( |
    as8) g f4.^\strill es8
    << es2. \\ es >>
    r4   c'8 des es des c bes
    as16. c32 des16. des32 es16. es32 des16. des32 c16. c32 bes16. bes32
    as16. c32 des16. des32 es16. as,32 bes16. bes32 c16. c32 des16. des32
    es16. es32 f16. f32 es16. es32 des16. des32 c16. c32 bes16. bes32
    as16. es'32 des16. c32 bes4 |
    \tempo Adagio
    bes16. bes32 bes16. bes32
    <<
        {c4. bes8 as g f4}
        \\ { e2 }
        \\ { g2 s4 \stemDown d4}
    >>
    bes'4 ~ bes8 as g f es c' |
    bes as
    <<
        {
            aes4.-\strill g8  as4. c8 bes bes
            bes4 c4. bes8
            as g f4
        }
        \\  {
            s2 c s4 s4 e2
        }
        \\ {
            \stemDown es2
            \stemNeutral es2 s4 s4 g2 s4
            \stemDown d
        }
    >>
    bes'4~ bes8 as g es' d c |
    b a g g' f es |
    d4.( f8) es4 |
    d2 c8(^\strill b) |
    \tempo Presto
    b8
    <<
        { d,8 es g f es d4}
        \\ { b8 c es d c b4}
    >>
    r r
    r16 g'' f es d g d c b d b a |
    g4 r r |
    r4 g16 c b d c es d f es c b d c es d f es c b d |
    c es d f es g b, d c es d f |
    es g b, d c es d f es g f es |
    d4 r r ||
    r8
    <<
        { d,8 es g f es d4}
        \\ { b8 c es d c b4}
    >>
    r r |
    g'8 c,
    << {c4.-\strill b8 c4} \\ {g2 c4} >> r r |
    R2.\fermata \bar "|."

}

vdaSecondoPartB = \relative c' {
    \clef alto
    \key c \dorian
    \repeat volta 2 {
        \partial 8 {
            r16  << es \\ c >>
        }
        << es2 \\ c >>
        r16 << { es f g es  c' d es } \\ { c, d es c8 s8 } >> |
        f'16 a, b c b8^\strill d
        <<
            {
                g,16 es f g es4 ~ es16 g f es d8. c16 <g c>4
            }
            \\ {
                r16 c d es c4 s4 g c,
            }
        >>
        r16 es'' f g |
        es4 ~  es16 c d es c4 ~ c16 c d es |
        d bes c d es4  r16 c bes^\strill as bes4 ~ |
        bes16 g f es d8. es16 es4 r4 |
        r16 <<
            { es f g f8.-\strill es16 d8 g,4 g'8 \noBreak | g2 ~ g4. } \\
            {  c,16 d es d8. c16 b8 s4 g'8 g2 ~ g4. }
        >>
    }
    \repeat volta 2 {
        r16
        << b \\  g >>
        << b2 \\ g >>
        r2 r4 r16 g' d f es g c, bes
        <<
            {a8.-\strill bes16 <f bes>4} \\
            { f4 d }
        >>
        r4 r r16 f' c es |
        d bes a g fis8.^\strill g16
        <<
            { g4 ~ g16 c g bes }
            \\ {g4 s4}
        >>
        as16 c g f
        << { f8.-\strill e16} \\ { c4} >>
        f16 as as g
        f8.^\strill es16 es bes' c d  es4 ~ es16 f c es d4 ~ d8 c
        b8.^\strill a16 g8 es'
        <<
            {d8.^\strill c16 <es, g c>4. c'8 c4. } \\
            { g4 c, s8 es8 es4. }
        >>
    }
}

vdaSecondoPartC = \relative c' {
    \clef alto
    \key c \dorian
    \repeat volta 2 {
        R2.
        <<
            {
                c'4.
            } \\ {
                <c, es g>4
            }
        >>
        es'8 d f |
        es4 r8 g8 f es |
        << { d4.-\strill c8 b4 } \\ { g2 s4 } >>
        c4. es8 d f |
        bes,4. g8 f es d g f e f es \noBreak
        << { f2 es4 } \\ { d2 es4 } >>
    }
    \repeat volta 2 {
        r8 g g f es g es c c4 bes4 ~ |
        bes8 bes' bes4 c ~ |
        c8 f, f es d c |
        bes4. bes'8 c bes |
        as4 f8 c' d c |
        b4.^\strill g'8 es c |
        <<
            {b4.-\strill c8 <es, g c>4 } \\
            {g2 c,4}
        >>
        r4 r8 bes'_"pian." c bes |
        as4 f8 c' d c |
        b4. g'8 es c |
        <<
            {b4.-\strill c8 <es, g c>4 } \\
            {g2 c,4}
        >>
    }
}

vdaSecondoPartD = \relative c' {
    \clef alto
    \key c \dorian
    \tempo Presto
    \repeat volta 2 {
        R1 * 2
        r8 g'' f8. d16 es8. c16 bes8. g16 |
        as8. c16 f8. as,16 g8. es'16 d8. c16 |
        b8. g16 a8. b16 c8. es16 d8. es16 |
        f8. es16 d8. d16 es8. g16 f8. es16 |
        d8. b16 c8. d16 c4 r |
        R1
        r8 g f8. d16 es8. c16 bes8. a16 |
        as8. c16 f8. as,16 g8. es'16 f,8. d'16 |
        es,8. g'16 a8. b16 c8. es16 d8. c16 |
        bes8. d16 c8. a16 bes8. g16 f8. d16 |
        es8. g16 c8. es,16 d8. bes'16 a8. fis'16 |
        g4 r r8 bes, a8. f16 |
        g8. bes16 a8. c16 f,8. f'16 es8. c16 |
        d4 r r8 d c8. a16 |
        bes8. bes16 a8. a16 g8. g16 fis8.^\strill g16 \noBreak
        << g1 \\ g >>
    }
    \repeat volta 2 {
        R1
        r2 g8. g16 a8. b16 |
        c8. c16 d8. es16 f8. es16 d8. d16 |
        es8. g,16 f8. g16 es8. es16 f8. g16 |
        as8. g16 f8. f16 g8. g16 a8. b16 |
        c8. es16 d8. c16 b8. b16 c8. d16 |
        es8. g16 f8. d16 es8. c16 bes8. g16 as8. c16 f8. as,16 g8. bes16 as8. g16 |
        f8. g16 f8. es16 d4 r |
        R1
        g,8. g16 a8. b16 c8. c16 d8. es16 |
        f8. es16 d8. d16 es8. g16 f8. es16 |
        d8. es16 c8. b16 c8. c16 d8. es16 |
        f8. es16 d8. d16 es8. g16 f8. es16 |
        d4 r r8 g' f8. d16 |
        es8. c16 bes8. g16 as8. f'16 es8. c16 |
        des8. c16 bes8. bes16 c4 r |
        r8 as g8. es16 f8. des'16 c8. bes16 |
        c8. as16 g8. e'16 f8 c16( d) b8.^\strill c16 |
        <c, es g c>1\fermata
    }
}

vdaIIEa = {
    c8. c16 c c bes bes as8.^\strill  g16 as as g g |
    f8 des'16 c bes8 as << { as[-\strill g] } \\ es4 >>
    as4
}

vdaIIEb = {
    es4 as,8 f'16([ es)] des( c) f( es) |
    des( c) bes( as)
    << { g8.-\strill as16 } \\ { es4 } >> as2
}

vdaSecondoPartE = \relative c'' {
    \clef alto
    \key c \dorian
    \relative c'' {\vdaIIEa}
    \relative c'' {\vdaIIEa}

    \repeat volta 2 {
        g8. g16 g g f f es8.^\strill d16 es es d d |
        c8 d es16( g) f(^\strill es)  d4 r |
        r4 r8
        << { g f[ g f] } \\ { es d[ es d] } >>
        r
        r4 r8  bes'16( as) g( bes) es,( des) c8 as'16(^\strill g) |
        f8 r r4 r8
        <<
            { g8_"pian." f g f bes,4 as8-\strill es'2 } \\
            { es8 d es d s4. g,2 }
        >>
    }
    \repeat volta 2 {
        es'8. es16 f8. f16 es8. es'16 des8 des |
        c8. c16 bes8 bes
        << { a8.-\strill bes16 } \\ f4 >> bes |
        r4 \relative c'' { \vdaIIEb }
        r4_"pian." \relative c'' { \vdaIIEb }
    }
}

vdaSecondoPartF = \relative c' {
    \clef alto
    \time 6/8
    \key c \dorian
    \repeat volta 2 {
        es16 as c as es c' bes4^\strill as8
        as f'16 es des c bes as g4 |
        es16 as c as es c' bes4^\strill as8 |
        as8 as4^\strill << g4. \\ es >> |
    }
    \repeat volta 2 {
        R2.
        bes'16 g c bes as g f4 f8 |
        g f e f16 g as bes g8 |
        es8 d8.^\strill es16 << es4. \\ es >>
    }
    \repeat volta 2 {
        es,16 as c as es c' bes4^\strill as8
        es16_"pian." as c as es c' bes4^\strill as8
        es'16_"fort." as c as es c' bes4^\strill as8
        as  << { as g } \\ es4 >> as4. |
    }
}

vdaSecondoPartG = \relative c' {
    \clef alto
    \time 3/4
    \key c \dorian
    \repeat volta 2 {
        R2. * 8
    }
    \break
    \repeat volta 2 {
        << <g c es>2 \\ c, >> d'4 c d es8 g f es
        << <f bes>4 \\ d >> as'^\strill |
        << g2 \\ es>> g4 |
        c2 bes4 as bes c8 es, d c b4.^\strill c8
        << c2. \\ c >>
        
        \break
    }
    \repeat volta 2 {
        R2. r8 c d es f g c, as' g4.^\strill f8 es bes' c d es bes
        c as bes c bes4^\strill |
        as8 f' es d es c d c
        << { b4. c8 c2. } \\ { g2 c2. } >>
        \break
    }
    \repeat volta 2 {
        \relative c' \vdaGtheme
        \break
    }
    \repeat volta 2 {
        es4.( c8) g'( d) |
        es( c) es( f) g( bes,) |
        c( es,) d( c')  bes( as) |
        g( c) bes( as) g( f) |
        es( c') bes( as) bes( es,) |
        f( as) d,( f) bes,( es) |
        d( c)
        b4.^\strill c8 |
        << c2. \\ c >>
    }
    \repeat volta 2 {
        \vdaGthemeA
        c'16 es c bes as bes c d es g, as bes |
        as des c bes as bes c d e g, as bes |
        as f' d c b g' f es d g, a b |
        c d es f g es f g c,4
    }
    \break
    \repeat volta 2 {
        R2. * 3
        g2 g4 c2 bes4  as bes c8 es, d c b4.^\strill c8
        << c2. \\ c >>
    }
    \break
    \repeat volta 2 {
        \time 9/8
        \tempo Presto
        R8*9
        c4 d8 es4 c8 g'4 g8 |
        f4 es8 d4 es8 es4^\strill d8 |
        << es4 \\ es >> f8 g4 es8 bes'4 bes8 |
        c4 des8 es4 c8 bes4 c8 \noPageBreak |
        as4 bes8 c4 as8 es'4 es8 |
        d4 c8 b-.( g-.) c b4^\strill c8 |
        << {<es, g c>2. s4.} \\ {c2. s4.} >>
    }
    \repeat volta 2 {
        R8*9
        as'4 es'8 c-.( bes-.) as bes(-. g-.) f |
        es(-. as-.) g f(-. g-.) as g4^\strill f8 |
        es4 bes'8 g(-. f-.) es g(-. bes-.) des, |
        c-.( c'-.) bes as-.( bes-.) c es,4 es8 |
        f4 g8 as(-. g-.) f g(-. f-.) es |
        d(-. es-.) c  << {  c4.^\strill~ c4 b8 c2. s4. } \\ { g4. s4. c2. s4.} >>
    }
    \time 3/4
    \break
    \repeat volta 2 {
        g'2 g4 c2 bes4 as8 g << { f4.-\strill es8 es2. } \\ { d2 es2. } >>
        \vdaGthemeB
        \break
    }
   
    R4*3
    r16 c''32 d es f es d es8 r r4 |
    R4*3
    r16 g,32 as bes c bes as bes8 r r4 |
     \clef treble
    r16 c32 d es f es d es8 es e e |
    f32 c d e f g f e f16 g aes bes c c c c |
    c c c c, << {c4.^\strill b8} \\ g2 >> |
    << c4 \\ c >>  \clef alto r16 es32 f g as g f g4 |
    r16 c,32 d es f es d e16 c d e d bes c d |
    c16 as32 bes c des c bes c16 as bes c bes g as bes |
    as32 bes c bes as g f es d16 bes' c d bes d es f |
    es es,32 f g as g f g16 g32 as bes c bes as bes16 g as bes |
    c16 as32 bes c des c bes c16 as bes c bes g as bes |
    as8 as32 bes as g as16 bes c d es32 f g f es d c bes |
    as16 c f es << {d4.^\strill ~ d16 c} \\ {g2} >> |
    << {<es g c>2.} \\ c2. >>  |
    
    \clef alto
    \break
    << <g c es>2_"pian." \\ c, >> d'4 c d es8 g f es
    << <f bes>4 \\ d >> as'^\strill |
    << g2 \\ es>> g4 |
    c2 bes4 as bes c8 es, d c b4.^\strill c8
    << c2.\fermata \\ c >> \bar "|."
      
    
}