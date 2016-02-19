\version "2.18.2"

\tag-quote "vda1" { \vdaPartOne }

accomp-a = {
  d8-\solo f  cis d e f d a cis e cis a b cis a
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

violinII-partI = \relative d'' {
  f8-\tutti a16 g f4  r r8 f |
  e g16 f e4 r r8 e |
  f a16 g f4 r r8 f |
  e4 r8 f \fig e a, \figA d a d |
  \repeat unfold 2 {
    \figA cis a cis \figA d a d \fig e a  \figA d a d |
  }
  cis4 r8 a' g16( e) f8 g16( e) f8  |
  e4. d16 cis d f d a cis e cis a |
  f4 r8 a' g16( e) f8 g16( e) f8  |
  e4. d16 cis d f d a cis e cis a |
  f8 \accomp-a
  f''8-\tutti a16 g f4 |
  r4 r8 f e g16 f e4 |
  r4 r8 cis d a f d |
  R1 r2 \accomp-b a''8 c16 bes a4 |
  r4 r8 a g bes16 a g4 |
  r4 r8 g a c16 bes a4 |
  r4 r8 a g e r a |
  \repeat unfold 2 {
    bes16 c, bes'8 \fig a c \fig g c \fig a c
  }
  bes16 c, bes'8 \fig a c g4 r8 c |
  bes16( g) a8 bes16( g) a8 g,4. f16 e |
  f8 a bes g f4 r8 a' |
  bes16( g) a8 bes16( g) a8 g,4. f16 e |
  f8 a bes g f4 r4-\solo |

  R1 * 6
  \quote-mus "vda1" "Viola d'amore" {
    \tag-parts \once \override MultiMeasureRest #'staff-position = #-6
    R1 r2
  }

  c'8-\tutti e16 d c4 |
  r4 r8 c b d16 c b4 |
  r r8 b a e r c' |
  \fig b e \figA a e a \figA gis e gis \figA a e a |
  \fig b e \figA a e a gis16 b b d d b b a |
  a8 a' b, gis' a4 r |

  \accomp-c

  d,8-\tutti  a''16  g f4 r r8 f |
  e g16 f e 4 r r8 e |
  f a16 g f4 r r8 f |
  e4 r8 f \fig e a  \figA d a d |
  \repeat unfold 2 {
    \figA cis a cis \figA d a d \fig e a \figA d a d
  }
  cis4 r8 a' g16( e) f8 g16( e) f8  |
  e4. d16 cis d f d a cis e cis a |
  f4 r8 a' g16( e) f8 g16( e) f8 |
  e4. d16 cis d f d a cis e cis a |
  f4\fermata r r2 \bar "|."
}

violinII-partII = \relative c' {
  R1 * 3/4 * 21 ^ \markup {\smallCaps [Tacet]}
  \bar "|."
}

% repeat nine times
rn = #(define-scheme-function (parser location note)
        (ly:music?)
        #{
          \repeat unfold 3 { \tuplet 3/2 4 { \repeat unfold 3 { #note } } }
        #})

\tag-quote "vda3.2" { \vdaPartThree }

violinII-partIII = \relative c' {

  d8-\tutti f' \tuplet 3/2 4 {a8( g) a a( g) a }
  d,,8 f' \tuplet 3/2 4 {a8( g) a a( g) a }
  a,, cis' \tuplet 3/2 4 {e( d) e e( d) e }
  a,, cis' \tuplet 3/2 4 {e( d) e e( d) cis } |
  d8 f4 d a8 |
  g' e4 bes g8 |
  cis cis \tuplet 3/2 4 {e( d ) cis} f a, |
  a cis \tuplet 3/2 4 {e( d ) cis} g' a, |
  a cis \tuplet 3/2 4 {e( d ) cis} a' a, |
  a cis \tuplet 3/2 4 {e( d ) cis} e8. e16 |
  e4 r r |
  \tuplet 3/2 4 { e8 d e cis b cis a g a } |
  a,4 r r |
  \tuplet 3/2 4 { e''8 d e cis b cis a g a } |
  a,4 r r |
  a'16 a g f e f e d cis d cis b |
  a8 e' cis a e' a, |
  d16 d' c bes a bes a g f g f e |

  d4-\fermata \fine \bar "||" \noBreak r r |
  R1 * 3/4 * 17

  \quote-mus "vda3.2" "Viola d'amore" {
    R1 * 3/4 * 2
  }

  r8-\tutti c' \tuplet 3/2 4 {f8( e) f f( e) f } |
  f, c'\tuplet 3/2 4 {f8( e) f f( e) f } |
  c, e' \tuplet 3/2 4 { g( f) g g( f ) g } |
  c,, e' \tuplet 3/2 4 { g( f) g g( f ) g } |
  \tuplet 3/2 4 {
    \tuplet-hide
    f e f a, g a f' e f e d e c bes c e d e g f g e d e c bes c
    \tuplet-number-show
  } |
  a16 f' e d c d c bes a bes a g f f' e d c d c bes a bes a g |
  f8 bes c4 c, |


  \rn f'8
  \rn e
  \tuplet-hide
  \rn f
  \rn e
  \rn e
  \rn f
  \rn d
  \rn e
  \rn c
  \rn d
  \rn b
  \rn c
  \rn e
  \rn f
  \rn f
  \rn b,
  \rn c
  \rn b
  \rn b
  \relative a'

  \tuplet-number-show
  a8-\tutti a \tuplet 3/2 4 {a( gis) a a( gis) a }
  a,8 a' \tuplet 3/2 4 {a( gis) a a( gis) a }
  e gis \tuplet 3/2 4 { b( a) b b( a) b } |
  e, gis \tuplet 3/2 4 { b( a) b b( a) gis } |
  b,4 e gis |
  \tuplet 3/2 4 { b8 a b gis fis gis e d e } |
  e4 r r |
  \tuplet 3/2 4 { b'8 a b gis fis gis e d e } |
  e4 r r |
  r16 e' d c b c b a gis a gis fis |
  e8 b' gis e b' e, |
  r16 e' d c b c b a gis a gis fis |
  e8 a c a e' e, |

  a,4 r r |
  R1 * 3/4 * 33 \dc-al-fine \bar "|."
}
