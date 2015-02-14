\version "2.18.2"

parta = { bes'16 as? f d es g bes d << {s8 bes4.} \\ {ees8[ g, f ees]} >> | }

partb = {
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  b'32 ( c16. ) g32 ( as16. ) e32 ( f16. ) g32 ( as16. )
  bes32 ( c16. ) d32 ( es16. ) d32 ( es16. ) d32 ( es16. )
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

partc = {
  \override DynamicLineSpanner.staff-padding = #3
  <g, ees' c'>8\f  g'4 as8
  \p \acciaccatura { g8 ( } f16 ) e \acciaccatura {
    g8 (
  } f16 ) e \grace { e8 ( } f4 ) | % 2
  <g, f' d'>8 \f f'4 g8 \p \acciaccatura { f ( } es16 ) d
  \acciaccatura { f8 ( } es16 ) d \grace { d8 ( } es4 )
  | % 3
  \override DynamicLineSpanner.staff-padding = #1
  << { c'8 b4 c8 d c4 } \\ {ees,8 d4 ees8 f ees4 } >>  d'8 | % 4
  es4 \f ( d8 ) c

  \tuplet-bracket-hide
  \times 2/3  {
    b16[ d16 b]
  }
  \times 2/3  {
    g16 d16 b
  }
  g8 r | % 5
}

partd = {
  <<
    {
      es'8 \p d4 es8 f es4 f8 | % 6
      g4 f8 es es16 d d4
    } \\ {c8 b4 c8 d c4 d8 ees4 d8 c c16 b b4 }
  >> r8 | % 7
}

parte = { g16 f d b c es g b << { s8 g4. } \\ {c8[ ees, d c]} >> }

partf = {
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  g32 ( as16. ) e32 ( f16. ) c32 ( des16. ) e32 ( f16. ) g32
  ( as16. ) b32 ( c16. ) b32 ( c16. ) b32 ( c16. ) | % 53
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

violaPartOne =  \relative g' {
  \repeat volta 2 {
    \clef "alto"
    \key c \minor
    \time 4/4 | % 1
    \partc
    \partd
    << { bes'8. \f c16 bes es es d c4 bes } \\ {ees,2 ees} >> | % 8
    << { bes'2. bes4 } \\ {f8 g4 aes8 aes16 g c bes g4} >> | % 9
    << { bes8. c16 bes es es d \grace { d8 ( } c4 ) bes } \\ {ees,2 ees} >> | \barNumberCheck #10
    \acciaccatura { bes'8 ( } as ) g16 f \acciaccatura {
      as8 (
    } g8 ) f16 es d bes' es, bes' f
    bes16 g bes | % 11
    as16 bes f bes g bes es, bes' d, bes'
    es,16 bes' f bes g bes | % 12
    as16 bes f bes g bes es, bes' << { bes8 d,16.[ d32] d8 } \\ {f8 bes,16.[ bes32] bes8} >>r | % 13
    c'4 \p bes16 as g f e8 ( f e f ) | % 14
    ges8 f ( e f ) ges f ( e f ) | % 15
    bes4 as16 g f es d8( es d es ) | % 16
    f8( es d es ) f ( es d ) es | % 17
    bes4 c d es | % 18
    f8 g a bes c4 d | % 19
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/8)
    \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
    \times 2/3  {
      es16 c16 a
    }
    es16 a ( f a ges a )
    \times 2/3  {
      es'16 c16 a
    }
    es16 a ( f a ges a ) | \barNumberCheck #20
    \times 2/3  {
      es'16 c16 a
    }
    es16 a ( f a ges a )
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    << { bes8. a16 bes8 } \\ {d,4 d8} >> r
    \fermata | % 21
    \parta
    \parta
    \partb
    | % 24
    bes,4 f'\trill es r | % 25
    \parta
    \parta
    \partb
    | % 28
    bes,4 f'\trill es8[ es, es] r
  }
  \partbreak
  \repeat volta 2 {
    bes''4 c des8 bes4 c8 | \barNumberCheck #30
    des16 c c4 bes8 as16 c ( bes as ) g as ( bes
    c16 ) | % 31
    d16 es f es d c bes as g bes as g
    f16 g as bes | % 32
    c16 d es d c bes as g f as g f es
    f16 g as | % 33
    b16 c d c b as g f es g f es d
    es16 f g | % 34
    as16 b c b c g es c g ^\markup{
      \italic
      {arpegg\super o}
    } d'16 b' d, g, d' b' d, | % 35
    <g, ees' c'>4 <g ees' c'> <g ees' c'>2 | % 36
    <g d' b'> <g f' d'>
    <g e' d'> <g e' c'>
    <g ees' c'>1
    <aes ees' c'>2 <g ees' c'>
    fis16 a c es fis a c es es4 d8 c | % 41
    c4.\trill b16 as g4 \fermata r | % 42
    \partc
    \partd
    f'8 f16. f32 f8 c' b8. c16 d4 ~ | % 49
    d16 c b as g f es d es8. f16 g8 g |
    \barNumberCheck #50
    \parte
    \relative g'
    \parte
    \relative g'
    \partf
    g4 d'\trill c r | % 54
    \relative g'
    \parte
    \relative g'
    \parte
    \relative g'
    \partf
    g4 d'\trill c8[ c, c] r
  }
}

partg = \relative c {
  <g' ees' c'>8  g'16.[ es32] c8 g'
  g32 f f8 f16 ~ f32[ as g f] \acciaccatura { g8 ( } f32
  ) es32 \acciaccatura { f8 ( } es32 ) d | % 2
}

parth = \relative c' {
  <g es' c'>8 g'16. es32 c8 g' | % 19
  g16 f f8
  \times 2/3  {
    f16 as16 g
  }
  \times 2/3  {
    f16[ es16 d]
  }
}

violaPartTwo = \relative c' {
  | % 1
  \repeat volta 2 {
    \time 4/4  | % 1
    \key c \minor
    \clef alto
    \partg
    \partg | % 3
    c8 d es f g as g as | % 4

    g32[ es d es] f[ g a b] c[ d es d] c[ g
    es32 c] g8
    \times 2/3  {
      << { es'16[ d16 es]} \\ { c b c} >>
    }
    << { \acciaccatura es8 d8} \\ { \acciaccatura c b8} >> r | % 5
    << { bes'2 bes bes8 } \\ {g16 es g es as f as f g es g es as f as f g8} >>
    as16[ g f es] \acciaccatura { b'16 ( } {} c ) c c32
    d32 es d c[ d a bes] bes8 \times 2/3 {
      es,16 g16 bes
    }
    | % 7
    bes16 a8 as g ges16 f d es c' bes32( g  as f
    ) f8\trill | % 8
    es8\staccatissimo f16 f32. ( es64 ) es8\staccatissimo as16 as32. ( g64 ) g8\staccatissimo c16 c32. (
    bes64 ) bes32( g as f) f8\trill | % 9
    es8\staccatissimo f16 f32. ( es64 ) es8\staccatissimo as16 as32. ( g64 ) g8\staccatissimo c16 c32. (
    bes64 ) bes32 es c a bes[ g as f] |
    g32[ d! es bes] ces a bes g as[ c d f] as
    c32 d f f[ es d c] bes as g f g16 as32 f
    g16 f | % 11
    es4 \grace { d16 ees } f4\trill es r
    | % 12
  }
  es'8 bes16. g32 es8 bes'
  \times 2/3  {
    bes16 g16 e
  }
  e4 des'8 | % 13
  \acciaccatura { des8 } {} c bes as g
  \times 2/3  {
    as16 c16 as
  }

  \times 2/3  {
    f16[ c16 as]
  }
  f8 r | % 14
  des''8 des ~
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
  \times 2/3  {
    des16 f16 es
  }
  \times 2/3  {
    des16 c16 b
  }
  \acciaccatura { des8 ( } {}
  \times 2/3  {
    c16 ) b16 c
  }
  \acciaccatura { des8 ( } {}
  \times 2/3  {
    c16 ) b16 c
  }

  \times 2/3  {
    c16 es16 des
  }
  \times 2/3  {
    c16 bes16 a
  }
  | % 15
  \acciaccatura { c8 ( } {} \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    bes16 ) a16 bes
  }
  \acciaccatura { c8 ( } {} \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    bes16 ) a16 bes
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    bes16 des16 c
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    bes16 as16 g
  }
  \acciaccatura { bes8 ( } {} \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    as16 ) g16 as
  }
  \acciaccatura { bes8 ( } {} \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    as16 ) g16 as
  }
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  ges8 f | % 16
  e8[ f bes as] \acciaccatura { bes ( } {} as ) g r4 | % 17
  f8 f16. f32 f8 c' b8. c16 d4 ~ | % 18
  d16 c b as g f es d

  \parth
  \parth

  es16 c' as f g as \acciaccatura { g8 ( } {} f16 )
  \acciaccatura { es8 ( } {} d16 ) | % 21
  c4 d c8 d16 d32. ( c64 ) c8 f16 f32. ( es64 ) | % 22
  es8 as16 as32. ( g64 ) g32( es f d) d8\trill c d16 d32. ( c64
  ) c8 f16 f32. ( es64 ) | % 23
  es8 as16 as32. ( g64 ) g32[ es' d b] c g as f
  f8.
  \tuplet-hide
  \times 2/3 { es32 d c} \grace { es8 ( } {} d4\trill ) | % 24
  c8[ c' c c] c4 \fermata d | % 25
  c2 r
  \bar "|."
}

violaPartThree = \relative c' {
  \repeat volta 2 {
    | % 1
    \time 3/4  | % 1
    \clef alto
    \key c \minor
    c'8.\trill b32 c es4 d | % 2
    c8 g es c g[ es] | % 3
    c4 g'' f8. g16 | % 4
    \grace { f8 } {} es2 d4 | % 5
    c8[ es es g] g r | % 6
    b,8[ d d f] f r | % 7
    es8 g as b c es, | % 8
    \grace { f8 } {} es4 d2

    | % 9
    d2 es4 |
    \grace { es8 } {} d2 es4 | % 11
    d8. es16 f4 es | % 12
    \grace { f8 } {} es4 d2 | % 13
  }

  \partbreak
  \repeat volta 2 {
    << {d2 es4 \grace es8 d2 es4 d8. es16 f4 es \grace f8 es4 d2} \\ {g,2. g g g} >>
    d'8 f ( as b d ) f | % 14
    f8 d ( b as ) f d | % 15
    es8. as16 \grace { as8 } {} g8. f16 \grace { f8 } {} es8. d16 | % 16
    c4 c,_\smarkup-fine r
  }
  \partbreak
  \repeat volta 2 {
    | % 17
    \mark\smarkup-trio
    <<
      {
        bes''2 c4 | % 18
        bes2 c4 | % 19
        \grace { c8 } {} bes4. es8 d c |
        c2 bes4 | % 21
        bes2. | % 22
        bes2.
      } \\
      {
        es,2. es es es |
        as4 f8 g as as 
        as4 f8 g as as 
      }
    >>
    g8 bes as! ( g f ) es | % 24
    bes'4 bes, r | % 25
    \times 2/3  { es'8 c8 a8 }
    \times 2/3  { es' c8 a8 }
    \times 2/3  { es' c8 a8 }
    | % 26
    bes8 bes a g f e | % 27
    \times 2/3  {
      es8 a c8
    }
    \times 2/3  {
      es8 c a8
    }
    \times 2/3  {
      es'8 c a8
    }
    | % 28
    bes8 f' es d c bes | % 29
    bes8 ( a ) a ( g ) g ( f )
    f8 ( es ) es ( d es ) f | % 31
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
      \acciaccatura { a8 } g8 f es8
    }
    d4 c | % 32
    bes2.
  }
  \partbreak
  \repeat volta 2 {
    | % 33
    bes2 es4 | % 34
    \grace { es8 } d2 g4 | % 35
    f2 bes8. c16 | % 36
    bes4 as g | % 37
    es'4 es d8. es16 | % 38
    \grace { d8 } c4 c bes8. c16 | % 39
    \grace { bes8 } as4 as g8. as16
    << {  \grace g8 \stemUp f2. } \\ { \grace s8 \stemDown bes,2. } >>

    | % 41
    \times 2/3  {
      as'8 f d8
    }
    \times 2/3  {
      as'8 f d8
    }
    \times 2/3  {
      as'8 f d8
    }
    | % 42
    es8 es' d c bes a | % 43
    \times 2/3  {
      as8 f d8
    }
    \times 2/3  {
      as'8 f d8
    }
    \times 2/3  {
      as'8 f d8
    }
    | % 44
    es8 g ( as bes c d ) | % 45
    es8 ( d ) d ( c ) c ( bes ) | % 46
    bes8 ( as ) as ( g as ) bes | % 47
    \tuplet-bracket-hide
    \times 2/3  {
      \acciaccatura { d8 } c8 bes as8
    }
    g4 f | % 48
    es4_\smarkup-dc-fine es,2
  }
}

