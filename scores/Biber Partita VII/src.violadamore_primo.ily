\version "2.24.0"

strill = \markup { \smaller \bold \italic tr }

vdaPrimoPartA = \relative c' {
    \clef alto
    \key c \dorian
    \tempo Grave
    <c, g' c ees>4. <<
        {
            f'8 g f |
            ees2.
        } \\ {d8 es d c2.}
    >>  |
    <c, g' c ees>4. <<
        {
            f'8 g f |
            ees2.
        } \\ {d8 es d c2.}
    >>  |
    <c, g' c ees>4. <<
        {
            f'8 g f |
            <ees g c>4.
        } \\ {d8 es d  c4. }
    >>
    d'8 ees d |
    c bes as g f es |
    d[ c] f es as16 bes g f |
    \tempo Presto
    es g a b c d es f g es f g |
    c,4 r r |
    \repeat unfold 3 { ees,16( g) c( g) }
    \repeat unfold 3 { c,( es) g( es) }
    \repeat unfold 3 { g,( c) es( c)  }
    \repeat unfold 3 { ees,16( g) c( g) }
    es4 r r  |
    r16 g' a b c d es f g es f g |
    \clef treble
    c, d es f g as bes c g c bes as |
    g4 r r |
    R2.
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
    r8 <<
        {
            es8 es es es es
            \tempo Adagio
            f4. g8-\strill( fis4) g2.
        }
        \\ { c,8 c c c c c2 c4 g'2.}
    >>

    R2.^\fermata
    r8 bes as g f es
    r8 bes' as g f es
    r es' d c bes as g c bes as g f es as g c bes as |
    \tempo Presto
    g16 es' d c bes as g c bes as g f |
    es c' bes as g c bes as g c bes as |
    g es' d c bes as g c bes as g f |
    es8. es'16 d c bes as g c bes as |
    g es' d c bes as g c bes as  g f |
    es g' f es d c bes es d c bes as |
    g bes c d es g, as bes es,4 |
    \tempo Adagio
    r8
    <<
        { g16 f  es4.-\strill d8 d2. }
        \\ {
            es16 d c4. bes8 bes2.
        }
    >>

    r16 c'16( bes) as( g)  bes( as) c( bes) as( g) f( |
    es) as( g) f( es)  g( f)  as( g) f( es) d( |
    c) f'( es) des( c) es( des) f( es) des( c) bes( |
    as) des( c) bes( as) c( bes) c( c) bes( as) g( |
    f8) es
    <<
        { bes'4 as8.-\strill( g16) g2.}
        \\ {<d f>4 s es2. }
    >>
    c'8 des es des c bes |
    as16. c32 des16. des32 es16. es32 des16. des32 c16. c32 bes16. bes32 |
    as16. c32 des16. des32 es16. as,32 bes16. bes32 c16. c32 des16. des32 |
    es16. es32 f16. f32 es16. es32 des16. des32 c16. c32 bes16. bes32 |
    as16. es'32 des16. des32 c16. c32 bes16. as32 g16. g32 f16. f32 |

    \tempo Adagio
    <<
        {c'4. bes8 as g s4 bes4. as8 g4}
        \\ { e2 s4 s d2 s4}
        \\ { g2 s4 f8 es f2 \stemDown es4}
    >>
    es'2 f32( es des es f8)
    <<
        {
            bes,4.-\strill~ bes16 as |
            as4. as8 g f c'4. bes8 as g
            s4 bes4. as8 g4.
        }
        \\
        {
            es2 as s4  e2 s4  f8 es d2 s4.
        }
        \\ {
            s2  s2.
            g2  s4 s
            f2 \stemDown es4.
        }
    >>
    g'8 f es d4. es8 des c |
    b2^\strill c4 |
    d16( es f8) es4.^\strill d8 |
    \tempo Presto
    d 4 r r |
    r8
    <<
        { d,8 es g f es d4}
        \\ { b8 c es d c b4}
    >>
    r r |
    r16 g'' f es d g d c b d b a |
    g c b d c es d f es c b d |
    c es d f es c b d c es d f |
    es g b, d c es d f es g b, d |
    c es d f es g b, d c es d c |
    b8
    <<
        { d,8 es g f es d4}
        \\ { b8 c es d c b4}
    >>
    r r  | r8
    <<
        { d8 es g f es d es d4.-\strill ~ d16 c <g c>4}
        \\ { b8 c es d c b c g2 c,4 }
    >>
    r4 r
    R2.\fermata \bar "|."
}

vdaPrimoPartB = \relative c' {
    \time 4/4
    \clef alto
    \key c \dorian
    \repeat volta 2 {
        \partial 8 {
            r16 << g' \\ es >>
        }

        <<
            {
                g4 ~ g16 es f g es4 ~ es16 g f es
                f4~ f16 f es-\strill d es4
            } \\ {
                es4 ~ es16 c d es c4 ~ c16 es d c
                d4 ~ d16 d c b c4
            }
        >>

        r16

        << { es f g es16 \stemDown es'[ d c] } \\ { c,16 d es c8 s8 } >>
        << { b'8.-\strill[ c16] <g c> \stemDown es'[ f g]  } \\ {g,4 es8 s } >>
        es'4~ |
        es16 c d es c4 ~ c16 as bes c

        <<
            {
                <es, a>8.-\strill bes'16 <f bes>4 ~  bes16 bes as g
            } \\
            {
                c,4 d s
            }
        >>
        as'4 ~ as16 as g f |
        g bes as c f,8.^\strill es16 es4
        r16
        << { d es f |  es4 } \\ {b16 c d c4 } >>
        r16 f g as g

        << { d es f es8. d16 d2 ~ d4. } \\ { b16 c d c8. b16 b2 ~ b4. } >>


    }
    \repeat volta 2 {
        r16 d'
        d4 ~  d16 g d f es g c, es d f b, d c es d c
        << {b8.-\strill c16 <es, g c>4 ~ c'16 f c es} \\ {g,4 c, s16 } >>
        d' f bes, d c es a, c bes d c bes
        << {a8.-\strill bes16 <f bes>8} \\ {f4 d8} >>
        es'32 d c bes a8.-\strill g16  g2 |
        r4 r16 c g bes as c f, es
        << { <f bes>8 as16-\strill( g)}  \\ { d8 s}  >>  |
        << g4 \\ es >>  r16 es' bes des c8 f ~ f16 g d f |
        es g c, es d4. c8 b8.^\strill c16 |
        << {<g c>4. c8 c4.} \\ {es,4. g8 g4.} >>
    }
}

vdaPrimoPartC = \relative c' {
    \time 3/4
    \clef alto
    \key c \dorian
    \repeat volta 2 {
        <<
            {
                c'4.
            } \\ {
                <c, es g>4
            }
        >>
        es'8 d f |
        es4. g8 b, d |
        g, g' f es d c |
        b4.^\strill c8 d4 |
        es4. c8 bes as |
        g4. bes8 as c |
        f, bes as g as g |
        f2^\strill es4
    }
    \repeat volta 2 {
        <<
            {
                d4. d8 es d c4. c8 f es d4 g8 f es d
                <bes c>4 c d4 ~ d8 g g f es4
            } \\
            {
                b4. b8 c bes a4. a8 d c bes4 es8 d c bes f4 a  bes4 ~
                bes8 es es d c4
            }
        >>
        r8
        <<
            { as' as g f4 ~ f8 es d4 es d4.-\strill c8 <g c>4 } \\
            { f'8 f es d4 ~ d8 c b4 c g2 c,4}
        >>
        r8
        <<
            { g'' g f es4 } \\
            { es8_"pian." es d c4}
        >>
        r8
        <<
            { as' as g f4 ~ f8 es d4 es d4.-\strill c8 <g c>4 } \\
            { f'8 f es d4 ~ d8 c b4 c g2 c,4 }
        >>
    }
}

vdaPrimoPartD = \relative c''' {
    \time 4/4
    \clef alto
    \key c \dorian
    \tempo Presto
    \repeat volta 2 {
        r8 g f8. d16 es8. c16 bes8. g16 |
        as8. c16 f8. as,16 g8. es'16 d8. c16 |
        b8. g16 a8. b16 c8. es16 d8. es16 |
        f8. es16 d8. d16 es8. g16 f8. es16 |
        d8. b16 c8. d16 c4 r |
        R1
        r8 g f8. d16 es8. c16 bes8. g16 |
        as8. c16 f8. as,16 g8. es'16 d8. c16 |
        b8. g16 a8. b16 c8. es16 d8. es16 |
        f8. es16 d8. d16 es8. g16 bes8. as16 |g8. g'16 f8. d16 es8. c16 bes8.^\strill a16 |
        g8. bes16 a8. fis'16 g4 r |
        R1
        r8 d, c8. a16 bes8. g16 f8. d16  es8. g16 c8. es,16 d8. bes'16 c,8. a'16 |
        bes8. d'16 c8. a16 bes8. bes16 c8. c16 |
        d8. d16 e8. fis16 g8. a,!16 a8.^\strill g16 |
        g1
    }

    \break
    \repeat volta 2 {
        R1 * 3
        g8. g16 a8. b16 c8. c16 d8. es16 |
        f8. es16 d8. d16 es8. g16 f8. d16 |
        es8. c16 bes8. a16 g4 r |
        g8. g16 a8. b16 c8. c16 d8. es16 |
        f8. es16 d8. d16 es8. g,16 f8. es16 |
        d8. es16 d8. c16 b8. g''16 f8. d16 |
        es8. c16 bes8. g16 as8. c16 f8. as,16 |
        g4 r r2 |
        R1 |
        r8 g f8. d16 es8. c16 bes8. g16 |
        as8. c16 f8. as,16 g8. es'16 d8. c16 b8. g16 f8. d16 es8. c'16 d,8. b'16 |
        c,4 r4 r2 |
        r2 c'8. c16 d8. e16 |
        f8. f16 g8. as16 bes8. as16 g8. g16 as8. c16 bes8. g16 as8. f'16
        << { d8.-\strill c16 } \\ g4 >>
        <c, es g c>1\fermata
    }
}

vdaEa = {
    es8. es16 f f es es des8 c des c ~ c bes16^\strill as g8 as16 bes
    << { bes8.-\strill as16 <es as>4 } \\ { es4 c } >>
}

vdaPrimoPartE = \relative c'' {
    \time 4/4
    \clef alto
    \key c \dorian
    \relative c'' { \vdaEa }
    \relative c'' { \vdaEa }
    \repeat volta 2 {
        bes8. bes16 c c bes bes as8 g as g |
        c f, g16( bes) as( c) f,4.^\strill
        << { g8 f[ g] f } \\ { es d[ es] d } >>
        r r4 r8
        <<
            { g f ges f8.-\strill es16 es8 g16( bes) } \\
            { es,8 d es d4-\strill es8 s8 } \\
        >>
        as16( c) f,(^\strill es) |
        d8 << { g_"pian." f g f } \\ { es d es d } >>
        r8 r4 |
        r8 << { g f4-\strill es2 } \\ { es8 d8.-\strill es16 es2 } >>
    }
    \repeat volta 2 {
        as8._"fort." as16  as8 as
        << { <es a>8.-\strill a16 } \\ c,4 >> bes'8 bes
        f'8.es16 es des ges c, c8.^\strill bes16 bes4 |

        es4 as, f'16( es) des( c) f( es) des( c) |
        bes( as) des( c)
        << { bes8.-\strill as16 as2 } \\ { es4 es2 } >>
        es'4_"pian." as, f'16( es) des( c) f( es) des( c) |
        bes( as) des( c)
        << { bes8.-\strill as16 as2 } \\ { es4 es2 } >>
    }
}

vdaPrimoPartF = \relative c'' {
    \time 6/8
    \clef alto
    \key c \dorian
    \repeat volta 2 {
        as16 c es c as es' des4^\strill c8
        f16 es des c bes as g as bes8 es, |
        as16 c es c as es' des4^\strill c8
        f16 es des c bes as es'4. |
    }
    \repeat volta 2 {
        bes16 g c bes as g f4 f8
        g es f d4.^\strill
        bes'16 g c bes as g as bes c d es es,
        f g f8.^\strill es16 es4.
    }
    \repeat volta 2 {
        as,16 c es c as es' des4^\strill c8
        as16_"pian." c es c as es' des4^\strill c8
        as'16_"fort." c es c as es' des4^\strill c8
        f16 bes,
        <<
            { bes8.-\strill as16  <es as>4. } \\
            { es4 c }
        >>
    }
}

vdaGthemeA = {
    << <es g>2 \\ c >>
    g'4 c2 bes4 as8 g f4.^\strill es8 << es2. \\ es >> |
}

vdaGthemeB = {
    es2 es4 as2 g4  f8 as << { d,4.-\strill c8 <g c>2. } \\ { g2 c,2. } >>
}

vdaGtheme = {
    \vdaGthemeA
    \vdaGthemeB
}

vdaPrimoPartG = \relative c' {
    \time 3/4
    \clef alto
    \key c \dorian
    \repeat volta 2 {
        R2. * 8
        \break
    }
    \repeat volta 2 {
        \vdaGtheme
        \break
    }
    \repeat volta 2 {
        r8 c' d es f g c, as' bes c bes4 |
        es,4 es4.^\strill d8 |
        es g as bes g4 |
        r8 c d es f g bes,4 as'  g |
        f8 es <<
            { d4.-\strill c8  c2. } \\
            { g2 <c, es g>2. }
        >>
        \break
    }
    \repeat volta 2 {
        r8 es' d c g' g, |
        as bes c d es es, |
        f es d c' bes as |
        g bes es, g as bes |
        c es as, c bes es, |
        f es d f bes, es |
        d c b4.^\strill c8 |
        << c2. \\ c >>
        \break
    }
    \repeat volta 2 {
        \vdaGtheme
        \break
    }
    \repeat volta 2 {
        es''16 g es d c d es f g bes, c d |
        c f es d c d es f g g, as bes |
        c as bes c bes c d es f d es f |
        g bes, c d es g, as bes es, as g f
        \vdaGthemeB
    }
    \break
    \repeat volta 2 {
        g''2 g4 c2 bes4 as8 g << { f4.-\strill es8 es2. } \\ { d2 es2. } >>
        \vdaGthemeB
        \break
    }
    \pageTurn
    \repeat volta 2 {
        \time 9/8
        \tempo Presto
        c'4 d8 es4 c8 g'4 g8 |
        as4 bes8 c4 as8 es'4 bes8 |
        as-.( bes-.) c bes-.( as-.) g
        f4^\strill bes8 |
        << g4. \\ es >> r r
        as4 bes8 c4 as8 es'4 e8 |
        f-.( c-.) bes as-.( bes-.) c g4 g'8 |
        f4 f8 f-.( g-.) es
        << { d4^\strill c8 <g c>2. s4. } \\ {g4. es2. s4.} >>
    }
    \break
    \repeat volta 2 {
        c'4 g'8 es-.( d-.) c d-.( g-.) bes, |
        c4 bes8 aes4  c8 es,4 des8 |
        c-.( f-.) es d-.( es-.) f es4^\strill d8 |
        << { es4. } \\ { es4. } >> r r |
        as4 es'8 c-.( bes-.) as bes(-. es-.) g, |
        as4 bes8 c(-. bes-.) as bes(-. as-.) g |
        f(-. g-.) es << { d4.~ d4  r16 c } \\ { g4. s } >> |
        << {<g c>2. s4.} \\ {c,2. s4.} >>  
    }
    
    \time 3/4
    \break
    \repeat volta 2 {
       R4*9
       g''2 g4 c2 bes4 as bes c8 es, d c b4.^\strill c8 | << c2. \\ c >>
    }
    
    \break
    r16 c'32 d es f es d es16 c d es d bes c d |
    c as32 bes c des c bes c16 as bes c bes g as bes |
    as32 bes c bes as g f es d16 bes' c d bes d es f |
    es es,32 f g as g f g16 g32 as bes c bes as bes16 g as bes |
    c as32 bes c des c bes c16 as bes c bes g as bes |
    as8 as32 bes as g as16 bes c d es32 f g f es d c bes |
    as16 c g' es << {d4.^\strill ~ d16 c} \\ { g2} >> |
    c16 es32 f g as g f es16 c32 d es f es d es8 r |
    r16 es32 f g as g f e16 c d e g,4 |
    r16 c32 d es f es d es16 c d es es,4 |
    R4*3 |
    r16 g32 as bes c bes as bes8 r r4 |
    r16 c32 d es f es d es8 es e[ e] |
    \clef treble f32 c d e f g f e f16 g as bes c c c c |
    c c c c, << {c4.^\strill b8} \\ g2 >> |
    << c2. \\ c >>
        \clef alto
    << <es, g>2 \\ c_"pian." >>
    g'4 c2 bes4 as8 g f4.^\strill es8 << es2. \\ es >> |
    es2 es4 as2 g4  f8 as << { d,4.-\strill c8 <g c>2.\fermata } \\ { g2 c,2. } >>
    \bar "|."
}