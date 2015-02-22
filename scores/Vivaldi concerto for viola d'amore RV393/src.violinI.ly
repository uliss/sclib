\version "2.18.2"

\tag-quote "vda1" { \vdaPartOne }

accomp-a = {
  d,8-\solo f  cis d e f d a cis e cis a b cis a
  d e f g a, b cis d |
  a d cis d a' a, cis d |
  a d a d a a cis a |
  d d cis a d d cis a |
  d d a a d d cis a |
  d d cis a d d cis a |
  d d a a
}

accomp-b = {
  c8 d e f |
  c f c f c' c, e f c f c f c' c, e  c |
  f g a f e c e c |
  f g a f e c a' f |
  bes,4 c d e f g e8 c g' e |
  f d e c d bes c a |
  bes g a f' g, e' g e |
  f f c' c, f4 r |
  f8 f c' c,
}

accomp-c = {
  a,,8-\solo  b c a e' fis gis e |
  c b c a e' fis gis e |
  c b c a e' d e cis |
  d e f d a b cis a |
  d e f d a b cis a |
  d e f d a a' f d |
  g e f d e cis d bes |
  a4 a a8 a' f d |
  a4 a a8 a' f cis |
  d fis e d g a bes g |
  c, d e c f g a g |
  f e f d a b cis a |
  e' cis d gis, a b cis a |
  e' cis d gis, a b cis d |
  g,4. a8 bes4 r8 f' |
  g,4. a8 bes4 r8  cis |
  d d g, a d e f d |
  e cis a cis d e f d |
  e4 d c bes |
  a8 b cis d g4. a8 |
  bes4 r8 cis, d f g a d, e f cis d f g a |
}

violinI-partI = \relative d'' {
  d8-\tutti \exposition-a
  d8 \accomp-a
  d'-\tutti f16 e d8 a f a d, d'
  cis e16 d cis8 a e a a, e''
  f d a f  |
  \rm-left
  R1-\solo 
  r2

  \accomp-b

  f'8-\tutti  a16 g f8 c |
  a c f, f' e g16 f e8 c |
  g c c, e' f a16 g f8 c a c f, f' e c r a' |
  \repeat unfold 2 { \fig g c \figA f c f \figA e c e \figA f c f  }
  \fig g c \figA f c f e4 r8 a |
  g16( e) f8 g16( e) f8 bes,4. a16 g |
  a8 f' g e f4 r8 a |
  g16( e) f8 g16( e) f8 bes,4. a16 g |
  a8 f' g e f4 r-\solo |
  R1 * 6
  \quote-mus "vda1" "Viola d'amore" {
    \tag-parts \once \override MultiMeasureRest #'staff-position = #-6
    R1 r2
  }
  a,8-\tutti  c16 b a8 e' |
  c e a, a' gis b16 a  gis8 e |
  gis, b e, d' c a r e' |
  \fig d e \fig c e \fig b e \fig c e |
  \fig d e \fig c e b16 d d gis gis d d c |
  c8 a' b, gis' a4 r |

  \accomp-c

  d,8-\tutti  \relative d'' \exposition-a
  d'4\fermata r r2 \bar "|."
}

violinI-partII = \relative c' {
  R1 * 3/4 * 21 ^ \markup {\smallCaps [Tacet]}
  \bar "|."
}

% repeat nine times
rn = #(define-scheme-function (parser location note)
        (ly:music?)
        #{
          \repeat unfold 3 { \tuplet 3/2 4 { \repeat unfold 3 { #note } } }
        #})

\tag-quote "vda3" { \vdaPartThree }

violinI-partIII = \relative c' {
  \partthree-a
  d4 r r |
  R1 * 3/4 * 17

  \quote-mus "vda3" "Viola d'amore" {
    R1 * 3/4 * 2
  }

  r8 \relative f'' \vdapartthree-b
  \rn a''8
  \rn g 
  \tuplet-hide
  \rn a
  \rn g
  \rn a
  \rn a
  \rn g
  \rn g
  \rn f
  \rn f
  \rn e
  \rn e
  \rn a
  \rn a
  \rn a
  \rn gis
  \rn a
  \rn a
  \rn gis
  \relative a'
  \vdapartthree-c
  a,4 r r |
  R1 * 3/4 * 33 \dc-al-fine \bar "|."
}
