\version "2.18.2"


vtheme = { bes4 bes a a a a g g g g a a a a }

vthemed = { f e e e e d d d d e e e e }

viola-partI = \relative c'' {
  \key d \minor
  \time 4/4
  \clef alto

  \vtheme
  \vtheme
  g g g es c f f d bes es es c a a' a fis fis fis d d |
  bes bes' a d, g a bes d, d d e c a d d d e f e f e f a8 a a a |
  a4 \vthemed
  d \vthemed
  d d d g g c, c f f bes, bes e e a, f f' e a d, e |
  f a a a d, f e e cis cis cis cis cis cis d a' |
  a a, c c
  c8 c d c
  c8 c d c
  c4 a' g g g g f f f f g g g g
  f a g g g g f f f f g g g g
  f f f d bes e e c a d d g g c, c d c d c d |
  c a f f' f d c c c c bes bes bes bes c c c c bes d c c c c
  bes bes bes bes c c c c bes r g' g |
  g r g g as d, g g g es d d |
  d d c c c c d d d d c es
  d d d d c c c c d d d d c c a' a |
  g bes, bes bes bes bes bes bes bes bes' a a |
  a a g g g g a a a a d, bes' a d, g a bes d, d d
  e c a d d8 d d d bes2^\fermata
  \bar "|."
}

viola-partII = \relative bes' {
  \key d \minor
  \time 4/4
  bes2 ~ bes4 g8 es |
  a,4 d e d ~ |
  d8 c d b e4. a8 |
  f4 d e c |
  d bes c8 bes c a d b' g[ c] as4 bes g as f g |
  es g8 es c4 c' |
  c2 bes ~ bes4 g8 es a,4 d8 g |
  e4. cis'8 a fis d bes es c d4 d2 |
  es8 c d4 d2^\fermata
  \bar "|."
}

rs = #(define-scheme-function (parser location note)(ly:music?)
        #{ \repeat unfold 6 { $note } #})

#(cond ((not (defined? 'bass-partIII))
        (define bass-partIII #{ s1 #} )))
\tag-quote "Celli" \bass-partIII

viola-partIII = \relative d' {
  \key d \minor
  R1* 3/8  * 4

  \tag-parts \override MultiMeasureRest.staff-position = #-6
  \quote-with-clef "Celli" "bass" {
    R1 * 3/8 * 2
  }
  \revert MultiMeasureRest.staff-position
  
  \rs d16 g g f es d c \rs bes es es d c bes a |
  g8 g'4 ~ g16 bes a g f es |
  c' es d c bes a f a g f es d |
  bes' d c bes a g |
  es g f es d c a' c bes a g fis |
  d8 d r16 d
  d8 d r16 d
  d8 d r16 d
  \rs fis16 |
  \rs fis16 |
  \rs d
  \rs e
  a,4 a'8 |
  e a4 
  \rs { f4 r8 }
  \rs a,16 
  d d c bes a g |
  \rs f16 bes bes a g f e |
  d8 d'4 ~ d16 f e d c bes |
  g' bes a g f e c e d c bes a |
  f' a g f e s bes d c bes a g |
  e' g f e d cis |
  a8 a r16 a' a8 cis, r16 a' a8 f r16 a |
  \rs cis,16 
  \rs cis
  a a a a a' a |
  \rs b |
  g4 g8 f d g |
  \rs { es4 r8 }
  
  \rs g16 c c bes as g f |
  \rs es as as g f es d |
  c8 c'4 ~ c16 es d c bes as |
  f  as g f es d |
  bes' d c bes as g |
  es g f es d c as' c bes as g f |
  d f es d c b |
  g8 g' r16 g g8 b, r16 g' g8 c, r16 g' 
  \rs g16 
  \rs g16 
  \rs g16 
  \rs a
  \rs f
  f8 g f 
  d4 r8
  d4 r8
  d4 r8
  d4 r8
  bes4 r8
  g'16 bes a g f es |
  c' es d c bes a 
  f a g f es d |
  bes' d c bes a g |
  es g f es d c|
  a' c bes a g fis |
  d bes bes bes bes bes |
  \rs bes
  \rs bes
  \rs bes
  g d' d d d d |
  \rs d
  \rs d
  \rs d
  \rs d
  \rs d
  d4.^\fermata
  \bar "|."
}