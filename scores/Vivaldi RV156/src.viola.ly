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
  bes bes' a d, g a bes d, d d e c a d d d e f f f e f a8 a a a |
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