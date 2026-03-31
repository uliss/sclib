\version "2.24.0"

\tag-quote "vda1" \vdaPartOne

violinII-partI = \relative a {
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
  a,,8-\tutti e'' e a, a a,
  R2. * 12 |
  \tag #'cue { \cueDuring "vda1" #UP { R2. s2.  } }
  \tag #'score { R2. * 2  }
  r8 b'' b g g e, |
  e b'' b g g e, |
  e b'' b g g b, |
  b a' a fis fis dis |
  b a' a fis fis dis |
  dis a' a fis fis dis |
  e,16 fis g a b c dis e fis g a b |
  g8 e a,, e'' b, dis' |
  e,4 r r |
  R2. * 24
  \tag #'cue { \cueDuring "vda1" #UP { R2. * 2  } }
  \tag #'score { R2. * 2  }
  c'8 g' g c, c c, |
  c g'' g c, c g, |
  g f'' f b, b g,
  g f'' f b, b c, |
  c g'' g c, c c, |
  c g'' g c, c b |
  b16 g a b c d e f g8 g, |
  d c' d, c' d, b' |
  c4 r r |
  R2. * 26
  \tag #'cue { \cueDuring "vda1" #UP { R2. * 3  } }
  \tag #'score { R2. * 3  }
  c8 a' a c, c a, |
  a a'' a c, c e, |
  e b'' b gis gis e, |
  e b'' b gis gis d |
  c4 r r |
  R2. * 11 |
  \tag #'cue { \cueDuring "vda1" #UP { \once \override MultiMeasureRest.staff-position = #-8  R2. } }
  \tag #'score { R2. * 1  }
  c8 a' a c, c a, |
  a a'' a c, c a, |
  a a'' a c, c e, |
  e16 fis gis a b c d e fis gis a b |
  c,8 a' e, a' e, gis' |
  a2.\fermata \bar "|."
}

rf = #(define-scheme-function (note)
        (ly:music?)
        #{
          \repeat unfold 4 { #note }
        #})

violinII-partII = \relative c' {
  \rf c8
  \rf b
  \rf b
  \rf c
  \rf cis
  \rf d
  \rf d
  \rf c
  \rf b
  a c c c
  \rf gis
  \rf c
  \rf gis'
  \rf g
  \rf f
  \rf f
  \rf e
  c c g' d |
  \rf e
  \rf dis
  \rf b
  c c b b |
  \rf b
  \rf c
  \rf gis
  \rf c
  gis gis c c c c d d |
  d d e e e e e e |
  \rf f
  \rf gis,
  c c e e c c e e |
  c c e e c2\fermata \bar "|."
}


\tag-quote "vda3.2" { \vdaPartThree }

violinII-partIII = \relative c' {
  R2 |
  \repeat unfold 5 {
    e'16 d c b a gis fis e
  }

  \set beamExceptions = #'((end . (
                                    ((1 . 8) . (4))
                                    ((1 . 16) . (4))
                                    )))

  a4 c b e, ~ e8 b' e b |
  c e a,4 ~ a8 e' a c, |
  b4 e, |
  gis'16 fis e d c b a gis |
  R2
  f'16 e d c b a g f |
  R2 |
  e'16 d c b a g f e |
  R2 |
  gis'16 fis e d c b a gis |
  a e' c a b e b gis |
  a4 r |
  gis'16 fis? e d c b a gis |
  a e' c a b e b gis |
  a4 r |
  a,8-\solo c b a e' d c b a gis a c d e f d c gis a c d e f d c gis a d |
  e e16 fis gis8 e |
  r a,16 b c8 a |
  r e'16 fis gis8 e |
  r a,16 b c8 a |
  e'4 gis |
  a,2 d4 fis |
  g,2 |
  c4 e f2 |
  g a b |
  c8 c,16 d e8 c |
  r8 g16 a b8 g |
  r c16 d e8 c |
  r8 g16 a b8 g |
  c4 r |
  r8 e f g |
  c,4\tutti r |
  g''16 f e d c b a  g
  \repeat unfold 4 { g'16 f e d c b a  g }
  c4 e d g,~ g8 d' g d e g c,4 ~ |
  c8 g' c e, d4 g, ~ g e' d2 c4 r |
  R2 * 17
  R2
  \repeat unfold 5 { b'16 a g fis e dis? cis b }
  g' fis  e dis cis b a g |
  R2 |
  fis'16 e d c b a g fis |
  R2 |
  e'16 d c b a g fis e |
  R2 |
  fis'16 e dis cis b a g fis |
  e' g e b b fis' dis b |
  b4 r |
  fis'16 e dis cis b a g fis
  e' g e b b fis' dis b |
  b4 r |
  R2 * 14
  R2
  \repeat unfold 5 { a'16 g f e d c bes a }
  d c bes a g f e d |
  R2 |
  d'16 c bes a g f e d |
  R2
  d'16 f d a a e' cis a |
  a f' d a a e' cis a |
  d4 r |
  R2 * 11
  \tag #'cue { \cueDuring "vda3.2" #UP { R2 * 2  } }
  \tag #'score { R2 * 2  }

  a,8-\solo c b a e' d c b a gis a c d e f d |
  c gis a c d e f d |
  c gis a d e e16 fis gis8 e |
  r8 a,16 b c8 a |
  r8 e'16 fis gis8 e |
  r8 a,16 b c8 a |
  e'4 gis a2 |
  e4 gis a2 |
  d, c4 a |
  e'2 |
  R2-\tutti |
  \repeat unfold 5 { e'16 d c b a gis fis e }
  a4 c b e, ~ e8 b' e b |
  c e a,4 ~ | a8 e' a c, |
  b4 e, |
  gis'16 fis e d c b a gis |
  R2
  f'16 e d c b a g f |
  R2 |
  e'16 d c b a g f e |
  R2
  gis'16 fis e d c b a gis |
  a e' c a b e b gis |
  a4 r |
  gis'16 fis? e d c b a gis |
  a e'c a b e b gis |
  a4\fermata r \bar "|."
}


%{
convert-ly (GNU LilyPond) 2.24.4  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
