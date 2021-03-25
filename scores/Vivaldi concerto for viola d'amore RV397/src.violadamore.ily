\version "2.20.0"

\include "src.violinI.ily"
\include "src.violinII.ily"

\tag-quote "v1.3" { \violinI-partIII }
\tag-quote "v2.3" { \violinII-partIII }

vdaPartOne = \relative c' {
  <a c e a>8 <c' a'> <c a'> <e, c'> <e c'> <a, c e a>
  <a c e a> <c' a'> <c a'> <e, c'> <e c'> <a, c e a> |
  <a c e a> <c' a'> <c a'> <e, c'> <e c'> <e b'> |
  <e b'> b'' b <b, gis'> <b gis'> <e, b'> |
  <e b'> b'' b <b, gis'> <b gis'> <e, b'> |
  <e b'> b'' b d, d  <e, a> |
  <a, c e a>8 <c' a'> <c a'> <a c> <a c> <a, c e a>
  <a c e a>8 <c' a'> <c a'> <a c> <a c> d, |
  d <a' f'> <a f'> <a d> <a d> d, |
  d <a' f'> <a f'> <a d> <a d> g |
  g f' f d d b, |
  b f'' f d d c, |
  c e' e a a <a,, c e a> |
  <a c e a>8 <c' a'> <c a'> <a c> <a c> <a, c e a>
  <a c e a>8 <c' a'> <c a'> <a c> <a c> <a, c e a>
  <a c e a>8 <c' a'> <c a'> <a c> <a c> e |
  e16 fis gis a  b c d e fis gis a b |
  c,8 a' e, a' e, gis' |

  \repeat unfold 2 {
    \clef alto
    <e,, a c e a>4 r8 \clef treble a'16( b) c( b) c( b) |
    \clef alto
    <e,, a c e a>4 r8 \clef treble a'16( b) c( b) c( a) |
    a'8 g16 f e8 a, b e,
  }
  \clef alto
  <e, a c e a>4 r r
  \clef treble
  e''16( g f g e8) c c4\trill |
  b16( d c d b8) g g4\trill |
  f'16( a g a f8) d d4\trill |
  cis16( e d e cis8) a a4\trill
  g'16 ( b a b g8) e e4\trill |
  dis16( fis e fis dis8) b b4\trill |
  a16( c b c)
  a16( c b c)
  a16 c b a
  g8 e, e e'16( fis) g( fis) g( fis)
  e8 e, e g'16( a) b( a) b( a) |
  g8 e, e e''16( fis) g( fis) g( fis) |
  e8 e,, e g''16( a) b( a) b( a) |
  g8 e,, e16 e''16 fis e b e fis e |
  b' e, fis e b e fis e b e fis e |
  b'8 e, a,, e'' b, dis' |
  e,, r r4 r |
  \tag-parts \break
  R2. * 7 |
  \repeat unfold 2 {
    e''16( b a b)
    e,( b' a b)
    e,( b' a b)
  }
  \repeat unfold 2 {
    fis'( dis cis? dis)
    b( dis cis dis)
    b( dis cis dis)
  }
  \repeat unfold 2 {
    g( b, a b)
    e,( b' a b)
    e,( b' a b)
  }

  \repeat unfold 2 {
     a' c, b c
     e, c' b c
     e, c' b c
  }

  \repeat unfold 2 {
     ais' cis, b cis
     e, cis' b cis
     e, cis' b cis
  }

  b'8 fis dis cis? b4 |
  \repeat unfold 2 {
     gis'16 d c d
     e, d' c d
     e, d' c d
  }

  \repeat unfold 2 {
    a'16 c, b c
    e, c' b c
    e, c' b c
  }

  \repeat unfold 2 {
    fis c b c
    a c b c
    a c b c
  }

  \repeat unfold 2 {
    g' b, a b
    g b a b
    g b a b
  }

  \repeat unfold 2 {
    f' b, a b
    g b a b
    g b a b
  }

  e c b c
  e c b c
  e c b c
  bes' c, b c
  g' c, b c
  bes' c, b c
  a' g f e f e d c d c b a
  g c b c
  e, c' b c
  e, c' b c
  f, c' b c
  f, c' b c
  f, c' b c
  g b a b
  g b a b
  g b a b
  c8 r r4 r4 |
  R2. * 7 |
  \repeat unfold 2 {
    c16( e g8 ~) g f16( e) d( c) d( b)
    c16( e g8 ~) g f16( e) d( c) d( b)
    c8 g e c e g |
  }
  c4 r r |

  \repeat unfold 2 {
    d16( f a8 ~) a g16( f) e( d) e( cis)
    d16( f a8 ~) a g16( f) e( d) e( cis)
    d8 a f d f a |
  }
  d4 r r

  \repeat unfold 2 {
    e16( g b8 ~) b a16( g) fis( e) fis( dis)
    e16( g b8 ~) b a16( g) fis( e) fis( dis)
    e8 b g e g b |
  }
  e8( b' g fis? e d) |
  c( fis, c' e d c) |
  b( g b d c b) |
  f'( d gis, d' f d) |
  c( a c e a bes) |
  cis,( e bes' g f e) |
  f( a g f e d) |
  f( d gis, d' f b) |
  f( d gis, d' f b) |
  f( d gis, d' f b) |
  c, r r4 r |
  R2. * 3 |
  c16 d e d c b a g f e d c |
  d' e f e d c b a g f e d |
  e' f g f e d c b a g f e |
  f' g a g f e d c b a g f |
  gis' a b a gis fis e d c b a gis |
  a8 c d, d' e, e' |
  f, f' gis, gis' a, a' |
  e,16 b' a b
  e,16 b' a b
  e,16 b' a b
  e, c' b c
  e, c' b c
  e, c' b c
  e, d' c d
  e, d' c d
  e, d' c d
  <<
    {
      d4. c16 b c8 b16 a
      gis'4. fis16 e b'8 a16 gis
      a8 a, b4.\trill a8
    }
    \\
    {
      e2 e4 d'2 d4
      s4 e,2
    }
  >>
  
   \tag-parts \break

  <a, c e a>8 a'' a c, c <a, c e a>
  <a c e a>8 a'' a c, c <a, c e a>
  <a c e a>8 a'' a c, c e,
  e16 fis gis a b c d e fis gis a b |
  c,8 a' e, a' e, gis' |
  a2.\fermata
  \bar "|."
}

vdaPartTwo = \relative c'' {
  R1 * 4
  r2
  c16. e32 a16. c,32 a16. e32 a,16. c'32
  b16. gis'32 b16. d,32 b16. e,32 e,16. b''32 c16. e32 a16. c,32 a16. e32 a,16. c'32 |
  b16. e,32 e,8 r16
  e'16 f16. gis32 a,16. cis'32 e16. cis32 a16. e32 a,16. cis'32 |
  d16. f32 a16. f32 d16. f,32 d16. d'32 g,,16. d''32 f16. d32 b16. g32 g,16. b'32 |
  c16. e32 g16. e32 c16. bes32 e,16. bes'32 a16. c32 f16. a32
  << {b,8. c16 } \\ {g4} >> |
  <c, e c'>4 r16 c'32( d e f g a)
  dis,16. b32 fis16. b32 a,16. c'32 b16. a32 |
  g16. e32 e,16. b''32 e16. g32 b16. g32
  a,,16. e''32 fis16. e32 b,16. e'32 fis16. dis32 |
  \appoggiatura dis8 e4 r
  c16. e32 a16. c,32 a16. e32 a,16. c'32 |
  b16. gis'32 b16. e,32 b16. e,32 e,16. b''32 c16. e32 a16. c,32 a16. e32 a,16. c'32 |
  b16. e,32 e,8 r16 a'
  b16. c32 f,16. c'32 f,16. c'32 fis,16. d'32 fis,16. d'32 |
  g,16. b32 c16. d32 gis,16. e'32 gis,16. e'32
  a,16. c32 d16. e32
  a,16. c32 d16. e32
  bes16. d32 e16. f32 bes,16. d32 e16. f32 b,16. d32 gis,16. b32 e,16. b'32 e,,16. b''32 |
  c16. e32 a16. c,32 b16. e32 gis16. b,32 c16. e32 a16. c,32 b16. e32 gis16. b,32 |
  c16. e32 a16. c,32 << {b8.\trill a16 } \\ {e4} >>
  <a, c e a>2\fermata \bar "|."
}

vdaPartThree = \relative c'' {
  \key a \minor
  \time 2/4
  \clef treble

  \quote-mus "v1.3" "Violini I" {
    \tag-parts \override MultiMeasureRest #'staff-position = #-8
    R2 * 6 |
    \tag-parts \override MultiMeasureRest #'staff-position = #-6
    R2 * 18 |
    \revert MultiMeasureRest #'staff-position
    %R2 * 3
    %R2 * 14
  }


  a4 b8. c16 |
  b4 a ~
  \repeat unfold 2 {
     a8 e' \appoggiatura d c b16 a |
    bes8 gis a4 ~ |
  }
  a8 e' \appoggiatura d c b16 a |
  \repeat unfold 8 { e'16 e, e'16 e, }
  \set beamExceptions = #'((end . (
                                    ((1 . 8) . (4))
                                    ((1 . 16) . (4))
                                   )))
  gis'8( a b) d, |
  cis8 e16 d cis8 b16 a |
  fis'8( g a) c, |
  b d16 c b8 a16 g |
  e'8( f g) bes, |
  a8( c16 b a8 g16 f)
  b8( d16 c b8 a16 g)
  c8( e16 d c8 b16 a)
  d8( f16 e d8 c16 b)
  g'2 ~ g ~ g ~ g ~ g8
  f16( e) d( c) b( a)
  g8 c \appoggiatura e d c16 b |
  c4 r |
   \tag-parts \break
  \quote-mus "v1.3" "Violini I" {
    \tag-parts \override MultiMeasureRest #'staff-position = #-6
    R2 * 13 |
    \revert MultiMeasureRest #'staff-position
    %R2 * 3
    %R2 * 14
  }
  c'8[ g f e] |
  r g,[ f e] |
  r c' b16 a g f |
  e8 d c4 |
  r8 g'' f e |
  r g, f e |
  r g' f16( e) d( c) |
  g'2 |
  r8 g f e |
  r8 bes' a16 g f e |
  f d e cis d4 |
  r8 f e d |
  r a' g16( f) e( d) |
  e( c) d( b) c4 |
  r8 fis16 e dis8 cis16 b |
  a8 fis'16 e dis8 cis16 b |
  a'4 ~ \tuplet 3/2 8 {
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2
    \tuplet-number-only
    a16( b a g a fis)
    g( b a g fis e)
    fis( a g fis e dis)
  }

  \set subdivideBeams = ##f
  e4 r
  \quote-mus "v1.3" "Violini I" {
    \tag-parts \override MultiMeasureRest #'staff-position = #-6
    R2 * 16 |
    \revert MultiMeasureRest #'staff-position
    %R2 * 3
    %R2 * 14
  }
  e16 b b g g e e e, |
  e e' e g g b b e |
  fis dis dis b b fis fis b, |
  b fis' fis b b dis dis fis |
  g e e b b e, e e, |
  e e' e g g b b e |
  cis a a e e cis cis a |
  a cis cis e e a a cis |
  d a a f f d d a |
  a d d f f a a d |
  bes g g bes bes d d g |
  g d d g g bes bes d, |
  cis a a e e cis cis a |
  a cis cis e e a a g |
  f f' a d, cis e a cis, |
  d4 r |
  \quote-mus "v1.3" "Violini I" {
    \tag-parts \override MultiMeasureRest #'staff-position = #-6
    R2 * 11 |
    \revert MultiMeasureRest #'staff-position
    %R2 * 3
    %R2 * 14
  }
  
  \repeat unfold 2 {
    f16 d a d
    f16 d a d
    e cis e, cis'
    e cis e, cis'
  }
  f d a d
  f d a d
  gis d e, d'
  gis d e, d'
  a' c, e, c'
  a' c, e, c'
  b' d, e, d'
  b' d, e, d'
  c' e, e, e'
  c' e, e, e'
  b' d, e, d'
  b' d, e, d'
  a' c, e, c'
  a' c, e, c'
  gis' b, e, b'
  gis' b, e, b'
  a' c, e, c'
  a' c, e, c'
  <e, b' gis'>4 r8 e' |
  a,4 b8. c16 |
  b4 a ~
  \repeat unfold 2 {
    a8 e' \appoggiatura d c b16 a |
    bes8( gis) a4 ~
  }
  a8 e' \appoggiatura d c b16 a |
  \repeat unfold 8 {
    e'16 e, e' e,
  }
  gis'8( a b) d, |
  c8 e16( d) c8 b16( a) |
  gis'8( a b) d, |
  c e16( d) c8 b16( a) |
  bes8 d16( c) bes8 a16(  gis) |
  a8 e'16( d) c8 b16( a) |
  << {b4.\trill a8} \\ {e2} >> |
  a4 r

  \quote-mus "v1.3" "Violini I" {
    \tag-parts \override MultiMeasureRest #'staff-position = #-8
    R2 * 5
    \tag-parts \override MultiMeasureRest #'staff-position = #-6
    R2 * 18
    \revert MultiMeasureRest #'staff-position
    %R2 * 3
    %R2 * 14
  }
  \bar "|."
}