\version "2.24.0"
\include "../../include/editorial.ly"
\include "info.ily"

btheme-a = { g4 g fis fis f f e! e es es d d fis fis }

btheme-d = {
  \mark\default
  d4 d cis cis c c b b bes bes a a cis cis
}

btheme-f = { e e e e d d d d c c e e f  f }

btheme-g = { fis fis f f e e es es d d fis fis g g }

bass-partI = \relative g {
  \key d \minor
  \time 4/4
  \clef bass
  \btheme-a
  \btheme-a
  g g c, c f f bes, bes |
  es es a, a d d d d d d d d |
  g, g' d' b c fis, g g, d' b' c c, |
  d c bes? bes' |
  a a, a' a, a' a, a'8 d, a' a, |
  \btheme-d
  d4 d cis cis c c b b bes bes a a  a a |
  d4 d g g c, c f f bes, bes e e a, a d d a' fis g cis,
  d d' a fis g g a a, a' a, a' a, |
  a' a, d d, d' d, e' c |
  f,8 f' bes, c
  f,8 f' bes, c 
  \mark\default
  f,4 f'
  \btheme-f
  \btheme-f
  bes, bes e e a, a d d g g es es f f, f' f, f' f, |
  f' f, bes f' 
  \mark\default
  bes, bes' a a a a g g g g f f a, a bes bes' |
  a a a a g g g g f f a, a bes d b g |
  c c' c, c' f, b, c g' |
  \mark\default
  c, c b b bes bes a a as as g g b b c c b b bes bes a a as as g g b b c c fis fis |
  g g, g' g, g' g, g' g, 
  \mark\default
  g' g
  \btheme-g
  d' b c fis, g g, d' b' c c, d d, |
  g8 g d' d, g2^\fermata


  \bar "|."
}

bass-partII = \relative g {
  \time 4/4
  \key d \minor
  g8 fis g g, es' d es c d a' bes g cis, a' d d, |
  gis, a b gis a b cis a |
  bes a bes g a g a f |
  g f g c f g a f |
  g[ g,] c es f[ d] g g, |
  e' c f f, d' bes es es, |
  c' as' d, bes es g f es |
  fis, g a fis g g' bes g |
  es d es c d a' bes g |
  a b cis a d d, g g, |
  c a d d, g' fis g g, |
  c a d d, g2^\fermata
  \bar "|."
}

rsix = #(define-scheme-function (note)(ly:music?)
          #{ \repeat unfold 6 { $note } #})


#(cond ((null? violinII-partIII)
        (set! violinII-partIII #{ s1 #} )))
\tag-quote "v2" \violinII-partIII

bass-partIII = \relative g, {
  \time 3/8
  \key d \minor
  R1*3/8 * 2
  \quote-with-clef "v2" "Violin II" "treble" {
    R1*3/8 * 2
  }
  \rsix g16
  g' g f es d c |
  \rsix bes es es d c bes a |
  g \ed-slur a32( bes c[ d e fis]) g16 r |
  g, \ed-slur a32( bes c[ d e fis]) g16 r |
  \rsix g16 |
  \rsix c,
  \rsix f
  \rsix bes,
  \rsix es
  \rsix a,
  \rsix d
  \rsix g
  \rsix d
  \rsix g
  \rsix d
  \rsix d
  \rsix g
  \rsix cis,
  d4 d8 |
  d a' a, |
  \mark\default
  d4 r8 |
  d4 r8 |
  d4 r8 |
  d4 r8 |
  \rsix d16 |
  d'd c bes a g |
  \rsix f |
  bes bes a g f e |
  d16 \ed-slur e32( f g[ a b cis]) d16 r |
  d,16 \ed-slur e32( f g[ a b cis]) d16 r |
  \rsix d,16
  \rsix g
  \rsix c,
  \rsix f
  \rsix bes,
  \rsix e
  \rsix a,
  \rsix d
  \rsix a
  \rsix d
  \rsix a
  \rsix a
  \rsix d
  \rsix g, |
  c4 c'8 |
  f, g g, |
  \partbreak
  \mark\default
  c4 r8
  c4 r8
  c4 r8
  c4 r8
  \rsix c16
  c' c bes as g f |
  \rsix es aes aes g f es d |
  c16 \ed-slur d32( es f[ g a b]) c16 r
  c,16 \ed-slur d32( es f[ g a b]) c16 r
  \rsix c,16
  \rsix f
  \rsix bes,
  \rsix es
  \rsix as,
  \rsix d
  \rsix g,
  \rsix c
  \rsix g
  \rsix c
  \rsix b
  \rsix g
  \rsix c
  \rsix f
  bes,4 r8 |
  bes es f |
  \mark\default
  bes,4 r8
  bes4 r8
  bes4 r8
  bes4 r8
  \rsix bes16
  \rsix c
  \rsix f
  \rsix bes,
  \rsix es
  \rsix a, |
  \rsix d
  \rsix g,
  \rsix g
  \rsix g
  \rsix g
  \rsix g
  \rsix d'
  \rsix d,
  \rsix g
  \rsix d'
  \rsix d,
  g4.^\fermata
  \bar "|."
}

%{
convert-ly (GNU LilyPond) 2.24.2  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
