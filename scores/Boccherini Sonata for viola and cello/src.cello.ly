\version "2.18.2"

celloPartOne =  \relative c {
  \repeat volta 2 {
    %\tempo "Moderato"
    \clef "bass" \key c \minor \time 4/4 | % 1
    r8 c es c d
    d8 d c | % 2
    b8 b b b c c c r | % 3
    g1 ~ | % 4
    g8 g b c g4 ~ g16 g' d b | % 5
    g1 ~ | % 6
    g8 g b c g g'16. as32 g8 f | % 7
    g8 g g g as as g g | % 8
    d8 es4 f8 es es es es | % 9
    g8 g g g as as g g | \barNumberCheck #10
    f8 d es a, bes c d es | % 11
    f8 d es c bes c d es | % 12
    f8 d es c bes bes16. bes32 bes8 r | % 13
    r8 as as as g ( as g ) as | % 14
    bes8 as ( g as ) bes as ( g as ) | % 15
    g8 g g g f ( g f ) g | % 16
    as8 g ( f g ) as ( g f ) es | % 17
    d4 es bes' c | % 18
    d8 es f g as as16. g32 as8 as | % 19
    ges8[ ges ( f es] ) r ges[ ( f es] ) |
    \barNumberCheck #20
    r8 ges[ f es] d4 d8 r \fermata | % 21
    bes4. as8 
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    g es' d c | % 22
    bes4. as8 
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    g es' d es | % 23
    as,8[ as as as] as[ as a a] | % 24
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    bes8 bes bes bes 
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    es16 bes' as g f es d c
    
    | % 25
    bes4. as8 
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    g c bes as | % 26
    g4. f8 
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    es c' bes c | % 27
    as8[ as as as] as[ as a a] | % 28
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    bes8 bes bes bes es es, es r
  }
  \partbreak
  \repeat volta 2 {
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    g'8[ es g es] bes'[ g g es] | \barNumberCheck #30
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    e8 e e e f4 es | % 31
    d4 r8 d es4 d | % 32
    es4 r8 c d4 c | % 33
    b4 r8 b c4 r8 as | % 34
    f4. fis8 g2 | % 35
    g1 | % 36
    g1 | % 37
    g1 | % 38
    g1 | % 39
    as2 g | \barNumberCheck #40
    fis1 | % 41
    g2 r \fermata | % 42
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    r8 c[ es c] d d d c | % 43
    b8 b b b c c c c | % 44
    g1 ~ | % 45
    g8 g b c g4 ~ g16 g' d b | % 46
    g1 ~ | % 47
    g8 g b c g g b g | % 48
    as2 g | % 49
    b2 c4 es8 c | \barNumberCheck #50
    g'4. f8
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    es c b as | % 51
    g4. f'8 es[ c b c] | % 52
    f,8[ f f f] f[ f fis fis] | % 53
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    g8 g g g 
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    c16 g' f es d c b as | % 54
    g4. f'8 es[ c b as] | % 55
    g4. f'8 es[ c b c] | % 56
    f,8[ f f f] f[ f fis fis] | % 57
    \set Timing.baseMoment = #(ly:make-moment 1/2)
    g8 g g g c g c, r
  }
}


celloPartTwo =   \relative c, {
  \repeat volta 2 {
    \clef bass
    \key c \minor
    \time 4/4  | % 1
    <c g' ees' c'>8 g''16.[ es32]
    <<{ s8 es d4 d8 s8}\\ {c8 c c c  b g} >>  | % 2
    <c, g' ees' c'>8 g''16.[ es32]
    <<{ s8 es d4 d8 s8}\\ {c8 c c c  b g} >> | % 3
    \scorebreak
    c16 c ( b g ) c g d' g, es' ( c' b ) f
    es16 ( c' b ) f | % 4
    es32 c ( b c d es ) f d es8. fis16 g8 g, g r
    | % 5
    \scorebreak
    es'8 es d16 f as f es8 es d16 f as f | % 6
    es8 es es es es es g es | % 7
    c8 d es a, as g16 as bes c as bes | % 8
    g16 es bes' es, g es c' es, bes' es, as
    es16 g c32 as bes16 bes | % 9
    es,16 g as es g es c' es, bes' es, as es
    g8 r | \barNumberCheck #10
    r2 bes8 bes es16 f32 d es16[ a,] | % 11
    bes8 bes bes bes es,4 r
  }
  \partbreak
  \repeat volta 2 {
    | % 12
    es''8 bes16. g32 es8 des c des c bes | % 13
    as8 bes c c f f, f r | % 14
    f'8[ f] f[ f] e[ e] es[ es] | % 15
    d8[ d] des[ des] c[ c] bes as | % 16
    g8 as e' f c c4 bes8 | % 17
    as4 as g g16 g' d b | % 18
    g8 g b[ g] c g'16.[ es32]

    << {s8 es d4 d8 s} \\ {c8 c c c b g} >>  % 19
    c g'16.[ es32]<< {s8 es d4 d8 s} \\ {c8 c c c b g} >>
    c d es f | % 21
    g4 :16 g, :16 c16 es f c es c as' c, | % 22
    g'16 c, f c es as32 f g16 g, c es f c g'
    c,16 as' c, | % 23
    g'16 c, f c es f32 d es16 f g4 :16 g, :16 | % 24
    c4 r16 es f fis g2 \fermata | % 25
    c,2 r
  }
}

celloPartThree = \relative c {
  \clef bass
  \key c \minor
  \repeat volta 2 {
    | % 1
    \time 3/4  | % 1
    c8. es16 g4 f | % 2
    es4 r r | % 3
    es,4 es' d | % 4
    \grace { d8 } c2 b4 | % 5
    c4 r8 c es c | % 6
    g4 r8 g b g | % 7
    c8 es f d es c | % 8
    g4 g2
  }
  \partbreak
  | % 9
  \repeat volta 2 {
    b'2 c4 | \barNumberCheck #10
    \grace { c8 } b2 c4 | % 11
    b8. c16 d4 c | % 12
    c4 b g8 d | % 13
    b2. | % 14
    b2. | % 15
    c8. f16 g4 g, | % 16
    c4 
    \once \override TextScript.X-offset = #2 
    c,^\fermata_\smarkup-fine  r
  }
  \partbreak
  | % 17
  \repeat volta 2 {
    | % 17
     \mark \smarkup-trio
    g''2 as4 | % 18
    g2 as4 | % 19
    \grace { as8 } g4. c8 bes as | \barNumberCheck #20
    as2 g4 | % 21
    f4 d8 ( es f ) f | % 22
    f4 d8 ( es f ) f | % 23
    es8 g ( f es d ) c | % 24
    bes8 bes ( c d es f ) | % 25
    ges4 f es | % 26
    d4 r bes | % 27
    ges'4 f es | % 28
    d8 d' c bes as g | % 29
    g8 ( f ) f ( es ) es ( d ) | \barNumberCheck #30
    d8 ( c ) c ( bes c ) d | % 31
    es4 f f, | % 32
    bes2.
  }
  | % 33
  \repeat volta 2 {
    R2. | % 34
    bes2 es4 | % 35
    d2 g8. as16 | % 36
    g4 f es | % 37
    c'4 c bes8. c16 | % 38
    \grace { bes8 } as4 as g8. as16 | % 39
    \grace { g8 } f4 f es8. f16 | \barNumberCheck #40
    \grace { es8 } d2. | % 41
    ces4 bes as | % 42
    g4 r es | % 43
    ces'4 bes as | % 44
    g8 es' ( f g as bes ) | % 45
    c8 ( bes ) bes ( as ) as ( g ) | % 46
    g8 ( f ) f es f g | % 47
    as4 bes bes, | % 48
    es4_\smarkup-dc-fine es,2
  }
}