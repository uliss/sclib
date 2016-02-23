\version "2.18.2"

%\tag-quote "vda1" { \vdaPartOne }

violinI-partI = \relative a {
  a8-\tutti a'' a c, c a,
  a8 a'' a c, c a,
  a8 a'' a c, c e,
  e b'' b gis gis e,
  e b'' b gis gis e,
  e b'' b d, d a,
  a8 a'' a c, c a,
  a8 a'' a c, c d,
  d f' f d d d, |
  d f' f d d g, |
  g f' f d d b, |
  b f'' f d d c, |
  c e' e a a a,, |
  a8 a'' a c, c a,
  a8 a'' a c, c a,
  a8 a'' a c, c e,
  e16 fis gis a  b c d e fis gis a b |
  c,8 a' e, a' e, gis' |
  a4 r r |
  R2. * 5 |
  a,,8-\tutti a'' a c, c a,
  R2. * 14 |
  r8 b'' b g g e, |
  e b'' b g g e, |
  e b'' b g g b, |
  b a' a fis fis dis |
  b a' a fis fis dis |
  dis a' a fis fis dis |
  e,16 fis g a b c dis e fis g a b |
  g8 e a,, e'' b, dis' |
  e,4 r r |
  R2. * 26
  c'8 g' g c, c c, |
  c g'' g c, c g, |
  g f'' f b, b g,
  g f'' f b, b c, |
  c g'' g c, c c, |
  c g'' g c, c b |
  b16 g a b c d e f g8 g, |
  d c' d, c' d, b' |
  c4 r r |
  R2. * 29
  c8 a' a c, c a, |
  a a'' a c, c e, |
  e b'' b gis gis e, |
  e b'' b gis gis d |
  c4 r r |
  R2. * 12 |
  c8 a' a c, c a, |
  a a'' a c, c a, |
  a a'' a c, c e, |
  e16 fis gis a b c d e fis gis a b |
  c,8 a' e, a' e, gis' |
  a2.\fermata \bar "|."
}

rf = #(define-scheme-function (parser location note)
        (ly:music?)
        #{
          \repeat unfold 4 { #note }
        #})

violinI-partII = \relative c' {
  \rf e8
  \rf e
  \rf e
  \rf e
  \rf e
  \rf a
  \rf gis
  e e a, a
  a a gis gis
  a e' e e
  \rf e
  \rf e
  \rf e
  e e a a
  \rf a
  b b g g
  \rf g
  a a b b
  g g a a
  \rf fis
  \rf g
  \rf fis
  g g e e
  \rf e
  \rf e
  \rf e
  \rf e
  f f fis fis |
  g g gis gis a a a a |
  \rf bes
  b gis gis gis |
  e e gis gis
  e e gis gis
  e e gis gis
  e2\fermata \bar "|."
}


%\tag-quote "vda3.2" { \vdaPartThree }

violinI-partIII = \relative c' {
    \set beamExceptions = #'((end . (
                                    ((1 . 8) . (4))
                                    ((1 . 16) . (4))
                                   )))

  a'4 c b e, ~ e8 b' e b |
  c e a,4 ~ a8 e' a c, |
  b4 e, |
  R2 |
  \repeat unfold 5 {
    e'16 d c b a gis fis e
  }

  b''16 a gis fis e d c b
  R2
  a'16 g f e d c b a |
  R2 |
  g'16 f e d c b a g |
  R2 |
  \repeat unfold 2 {
    b'16 a gis fis e d c b |
    c a' e c e gis e b |
    c4 r |
  }

  a,8 c b a e' d c b a gis a c d e f d c gis a c d e f d c gis a d |
  e gis16 a b8 gis |
  r c,16 d e8 c |
  r gis'16 a b8 gis |
  r c,16 d e8 c |
  b'2 e,4. cis'8 |
  a2 |
  d,4. b'8 g4 c ~ |
  c d ~ |
  d e ~ |
  e f ~ |
  f8 a16 g f8 e16 d

  e8 e,16 f g8 e |
  r8 b16 c d8 b |
  r e16 f g8 e |
  r8 b16 c d8 b |
  e4 r |
  r8 e f g |
  c4 e d g,~ g8 d' g d e g c,4 ~ |
  c8 g' c e, d4 g,
  R2
  \repeat unfold 5 { g'16 f e d c b a  g }
  e'4 c' ~ |
  c b |
  c r
  c,, r
  c r |
  c8 d e d c4 r |
  c r
  c r
  g'8 a bes g |
  cis,4 r |
  g' gis |
  d8 a' f d b4 r |
  f' b, |
  c8 g' e c |
  b4 r |
  b r |
  b8 fis'  dis b e g, a b |
  e'4 g fis b, ~ |
  b8 fis' b fis g b e,4 ~ |
  e8 b' e, g fis4 b, |
  b'16 a g fis e dis cis b
  R2 |
  a'16 g fis e d c b a |
  R2 |
  g'16 fis e d c b a g |
  R2 |
  \repeat unfold 2 {
    a'16 g fis e dis cis b a |
    g' b g e fis a fis dis |
    e4 r
  }

  R2 * 14
  d4 f e a, ~ a8 e' a e |
  f a d,4 ~ |
  d8 a' d f, |
  e4 a, |
  f'16 e d c bes a g f |
  R2
  f'16 e d c bes a g f |
  R2
  f'16 a f d e a e cis |
  f a f d e a e cis |
  d4 r
  R2 * 13
  a,8 c b a e' d c b a gis a c d e f d |
  c gis a c d e f d |
  c gis a d e e16 fis gis8 e |
  r8 a,16 b c8 a |
  r8 e'16 fis gis8 e |
  r8 a,16 b c8 a |
  e'4 gis a2 |
  e4 gis a2 |
  d, c4 a |
  e'2 |
  a4 c b e, ~ e8 b' e b |
  c e a,4 ~ | a8 e' a c, |
  b4 e, |
  R2
  \repeat unfold 5 { e'16 d c b a gis fis e }

  b''16 a gis fis e d c b
  R2
  a'16 g f e d c b a |
  R2 |
  g'16 f e d c b a g |
  R2
  b'16 a gis fis e d c b
  c a' e c e gis e b
  c4 r |
  b'16 a gis fis e d c b
  c a' e c e gis e b
  c4\fermata r \bar "|."
}
