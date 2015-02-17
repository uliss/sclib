\version "2.18.2"
\include "../../include/editorial.ly"


pa = { a16( g) a8 a16( g) a8 }

pgfis = {
  g16( fis) g8
  g16( fis) g8
}

pg = {
  g16( f) g8
  g16( f) g8
}

pe = { e16( d) e8 e16( d) e8 }

pd = {
  d16( cis) d8
  d16( cis) d8
}

pc = {
  c16( bes) c8
  c16( bes) c8
}

pbes = {
  bes16( a) bes8
  bes16( a) bes8
}

pf = {
  f16( e) f8
  f16( e) f8
}

pfes = {
  f16( es) f8
  f16( es) f8
}

pdnat = { d16( c) d8  d16( c) d8 }

violinI-partI = \relative c'' {
  \key d \minor
  \time 4/4
  \clef treble
  r8 d g d c' bes4 a8~ a d,8 f d bes' a4 g8 ~ g c,8 ees c fis a4 d,8 ~ |
  d c4 bes16 a d8 g,16 fis g a bes c |
  d16( c) d8
  d16( c) d8
  d4 r |
  c16( bes) c8
  c16( bes) c8
  c4 r |
  a'8 d,16 c d e fis g a fis g a d, fis g a |
  bes( a) bes8
  bes16( a) bes8
  bes16 c, d c
  bes'16 c, d c
  a'16( g) a8
  a16( g) a8
  a16 bes, c bes
  a' bes, c bes
  g'16( f) g8
  g16( f) g8
  g16 a, bes a
  g'16 a, bes a
  fis'8 d16 c d e fis g
  \pa
  a8 d,16 c d e fis g
  \pa
  bes8 g
  g16( fis) g8 fis16( e) fis8 f16( e) f8 |
  e16( d) e8 ees16( d) es8 d bes' bes16( a) bes8 |
  \pa
  \pgfis
  fis16 g a g fis d e fis g a bes a g f e d |
  cis( e a) a d,( f a) a
  cis,( e a) a d,( f a) a |
  cis,( e a) a d,( f a) a cis,8 d d cis |
  d a d a g' f4 e8 ~ e a, c a f' e4 d8 ~ d g, bes g cis e4 a,8 ~ |
  a g4 f16 e a8 d,16( cis) d e f g |
  \pa a4 r |
  \pg g4 r |
  e'8 a,16 g a b cis d e cis d e a, cis d e |
  f f f f f f f f f e d c bes a g f |
  e' e e e e e e e e d c bes a g f e |
  d' d d d d d d d d c bes a g f e d |
  cis' cis cis cis cis cis cis cis f8 d d16( cis?) d8 |
  cis16( b) cis8 c16( b) c8 b16( a) b8 bes16( a) bes8 |
  a8 f' f16( e) f8 \pe |
  \pd cis8 a16 g a b cis d |
  \pe e8 a,16 g a b cis d |
  \pe f16 g f e d c bes a |
  d e d c bes a g f e f g a bes c d e |
  f8 a, bes g f' a, bes g |
  a c f c bes' a4 g8 ~ |
  g c, e c a' g4 f8 ~ |
  f bes, d bes e g4 c,8 ~|
  c bes4 a16 g c8 f,16 e f g a bes |
  \pc c4 r |
  \pbes bes4 r |
  g'8 c,16 bes c d e f g e f g c, e f g |
  \pa a16 bes, c bes
  a' bes, c bes
  \relative g''
  \pg g'16 a, bes a g' a, bes a |
  \relative f''
  \pf f'8 ees4 d8 ~ |
  d c4 bes8
  a16( c f) f
  bes,( d f) f
  a,16( c f) f
  bes,( d f) f
  a,16( c f) f
  bes,( d f) f
  a, bes c d es f g a bes8 d, c a' |
  bes f, bes f es' d4 c8 ~ |
  c f, a f d' c4 bes8 ~ |
  bes es, g es a c4 f,8 ~ |
  f ees4 d16 c f8 bes16 a bes c d es |
  f16( es) f8
  f16( es) f8 f4 r |
  es16( d) es8
  es16( d) es8
  es4 r |
  c8 f,16 e f g a bes c a bes c f, a bes c |
  d8 bes16 a bes c d es f8 f4 es16 d |
  es8 c16 b c d es f g8 g4 f16 es |
  as8 as4 g16 f es8 c g b |
  c g c g f' es4 d8 ~ |
  d g, bes g es' d4 c8 ~ |
  c f, as f b d4 g,8 ~ |
  g f4 es16 d g8 c16 b c d es f |
  \pg g4 r |
  \pfes f4 r |
  d8 g,16 f g a b c d b c d g, b c d |
  es8 g4 es8 ~ es d4 c8 |
  bes8 g16 fis g a bes c \pdnat |
  d8 g,16 fis g a bes c \pdnat |
  d8 d g d c' bes4 a8 ~ |
  a d, f d bes' a4 g8 ~ |
  g c, es c fis a4 d,8~ d c4 bes16 a bes8 g' g16( fis) g8 |
  fis16( e) fis8 f16( e) f8 e16( d) e8 es16( d) es8 |
  d8 bes' bes16( a) bes8 \pa
  \pgfis fis16 g a g fis d e fis g8 g g fis  g2^\fermata
  \bar "|."
}


violinI-partII = \relative g'' {
  \key d \minor
  \time 4/4
  r2 g |
  fis4 g ~ g f ~ f e8 d cis4 a' ~ a g ~ g f ~ f e8 bes' ~ bes a c4 |
  b c ~ c bes ~ bes aes ~ aes g ~ g f es g |
  a2 bes4 d g,2 fis4 g ~ g2 fis4 g ~ g fis g bes, a2 g^\fermata \bar "|."
}

rs = #(define-scheme-function (parser location note)(ly:music?)
          #{ \repeat unfold 6 { $note } #})

violinI-partIII = \relative d'' {
  \key d \minor
  \time 3/8
  \rs d16 g16 g f es d c 
  \rs  bes es es d c bes a |
  g16 \ed-slur a32( bes c[ d e fis]) g16 r |
  g,16 \ed-slur a32( bes c[ d e fis]) g16 r |
  bes, \ed-slur c32( d e[ fis g a)] bes16 r |
  bes, \ed-slur c32( d e[ fis g a)] bes16 r |
  \rs d,16 g g f es d c bes8 bes'4 ~ bes16 d c bes a g |
  a8 a4 ~ a16 c bes a g f g8 g4 ~ g16 bes a g f e |
  fis8 fis4 |
  g8 d r16 g16 |
  a8 d, r16 a' |
  bes8 d, r16 bes' |
  c4. ~ c8 bes a bes4. ~ bes8 a g |
  f16 e f g a8 bes e,4 |
  d16 a a a a a d d c bes a g |
  \rs f |
  bes bes a g f e 
  d16 \ed-slur e32( f g[ a b cis]) d16 r |
  d,16 \ed-slur e32( f g[ a b cis]) d16 r |
  f, g32 a bes[ c d e] f16 r |
  f, g32 a bes[ c d e] f16 r |
  \rs a,16 d d c bes a g |
  f8 f'4 ~ |
  f16 a g f e d |
  e8 e4 ~ e16 g f e d c |
  d8 d4 ~ d16 f e d c b |
  cis8 cis4 |
  d8 a r16 d16 |
  e8 a, r16 e' |
  f8 a, r16 f' |
  g4. ~ g8 f e f4. ~ f8 es d |
  es16 d es f g8 |
  as8 d,4 
  c16 g g g g g c c bes as g f |
  \rs es 
  as as g f es d |
  c d32 es f[ g a b] c16 r |
  c, d32 es f[ g a b] c16 r |
  es, f32 g a[ b c d] es16 r |
  es, f32 g a[ b c d] es16 r |
  \rs g,16 c c bes as g f |es8 es'4 ~ es16 g f es d c |
  d8 d4 ~ d16 f es d c bes |
  c8 c4 ~ c16es d c bes a |
  b8 b4 |
  c8 g r16 c |
  d8 g, r16 d' |
  es8 g, r16 g' |
  f4. ~ f8 es d |
  es4. ~ es8 d c |
  d16 bes d f bes8 | d,8 es c bes16 f' f f f f bes bes a g f e |
  \rs d 
  g g f es d c |
  bes8 bes'4 ~ bes16 d c bes a g |
  a8 a4 ~ a16 c bes a g f |
  g8 g4 ~ g16 bes a g f es |
  fis8 fis4 |
  g16 d d d d d g g f es d c |
  \rs bes es es d c bes a g g' g g g g |
  \rs g \rs fis g bes, bes bes bes bes \rs a \rs a g4.^\fermata
  \bar "|."
}
