\version "2.18.2"
\include "../../include/editorial.ly"

violinII-partI = \relative c' {
  \key d \minor
  R1 * 3 |
  r2 r8 d' g d c' bes4 a8~ a d,8 f d bes' a4 g8 ~ g c,8 ees c fis a4 d,8 ~ 
  d c4 bes16 a d4 r 
  es16( d) es8
  es16( d) es8
  es16 \ed-slur f,( g f)
  es' \ed-slur f,( g f)
  d'16( c) d8
  d16( c) d8
  d16 \ed-slur es,( f es) 
  d'16 \ed-slur es,( f es)
  c'16( bes) c8
  c16( bes) c8
  c2 fis8 d16 c d e fis g 
  a g a8 a16 g a8 fis8 d16 c d e fis d |
  d4 r r2 |
  r r8 g g16( fis) g8 |
  fis16( e) fis8 f16( e) f8 e16( d) e8 es16( d) es8 |
  d8 fis a16 fis g a d,4. d8 |
  a16( cis e) e 
  a,( d f) f
  a,( cis e) e 
  a,( d f) f
  a,( cis e) e 
  a,( d f) f
  e8 f e4 |
  f8 d,16( cis) d e f g a( g) a8 a16( g) a8 |
  a4 r g16( f) g8 g16( f) g8 |
  g4 r e'8 a,16 g a b cis d |
  e cis d e a, cis d e f8 a, d a |
  g' f4 e8 ~ e a, c a f' e4 d8 ~ d g, bes g |
  cis e4 a,8 ~ a g4 f16 e |
  a4 r 
  \repeat unfold 8 bes16
  bes a g f e d c bes 
  a' a a a a a a a a g f e d c bes a 
  g' g g g g g g g g f e d c bes a g a4 r |
  R1 r8 d' d16( cis) d8 cis16( b) cis8 c16( b) c8 |
  b16( a) b8 bes16( a) bes8 a4 r |
  r8 a16 g a b cis d e( d) e8 e16( d) e8 |
  e8 a,16 g a b cis a a4 r |
  f'16 g f e d c bes a g a bes c d e f g |
  a8 f g e a f g e |
  f f,16 e f g a bes c( bes) c8 c16( bes) c8 |
  c4 r bes16( a) bes8 bes16( a) bes8 a4 r
  g'8 c,16 bes c d e f g e f g c, e f g a8 c, f c bes' a4 g8 ~ g c, e c |
  a' g4 f8 ~ f bes, d bes |
  e g4 c,8 ~ c bes4 a16 g |
  c4 r d16( c) d8 d16( c) d8 |
  d16 e, f e d' e, f e c'( bes) c8 c16( bes) c8 |
  c16 d, e d c' d, e d bes'8 bes4 bes8 ~ |
  bes a4 g8
  f16( a c) c
  f,( bes d) d 
  f,( a c) c
  f,( bes d) d 
  f,( a c) c
  f,( bes d) d 
  f, g a bes c d es f d8 bes a c |
  d bes16 a bes c d es f( es) f8 f16( es) f8 |
  f4 r es16( d) es8 es16( d) es8 |
  es4 r c8 f,16 e f g a bes c a bes c f, a bes c d8 f, bes f |
  es' d4 c8 ~ c f, a f |
  d' c4 bes8 ~ bes es, g es |
  a c4 f,8 ~ f es4 d16 c |
  f4 r 
  d'8 d4 c16 b |
  c4 r es8 es4 d16 c |
  c8 f4 es16 d c8 es d c |
  c c16 b c d es f g( f) g8 g16( f) g8 |
  g4 r f16( es) f8 f16( es) f8 |
  f4 r d8 g,16 f g a b c d b c d g, b c d es8 g, c g |
  f' es4 d8 ~ d g, bes g es' d4 c8 ~ c f, as f |
  b d4 g, f es16 d |
  g8 es'4 c8 ~ c bes4 a8 |
  d16( c) d8 
  d16( c) d8 
  d8 g,16 fis g a bes c |
  d16( c) d8
  d16( c) d8
  d8 g,16 fis g a bes c |
  d8 g,16 fis g a bes c 
  d16( c) d8
  d16( c) d8
  r4 r 
  c16( bes) c8
  c16( bes) c8
  c4 r 
  a'8 d,16 c d e fis g a fis g a d, fis g a bes4 r |
  R1
  r8 g8 gis16( fis) g8 fis16( e) fis8 f16( e) f8 |
  e16( d) e8 es16( d) es8 d8 fis a16 fis g a |
  bes8 bes, a a g2^\fermata
  \bar "|."
}

violinII-partII = \relative c' {
  \key d \minor
  \time 4/4
  d'2 ~ d4 c ~ c bes a2 |
  b a d c |
  bes4. g'8 f2 ~ f4 es4 d2 |
  c2 bes as g4 es' |
  es2 d ~ d4 c ~ c bes8 d |
  cis2 c4 bes |
  a2 bes4 g ~ g fis g2^\fermata
  \bar "|."
}

violinII-partIII = \relative c' {
  R1*3/8 * 100
}
