\include "common.ily"

bassoA = {
  \tuplet 3/2 4 {
    d8( f a)
    cis,( e a)
    a,( e' a)
    d,( f a)
    cis,( e a)
    a,( e' a)
    f( a c)
    e,( g c)
    c,( e c')
    f,( a c)
    e,( g c)
    c,( e c')
    g( bes d)
    fis,( a d)
    d,( fis d')
  }
}

celloPartOne = \relative c {
  \tempo Adagio
  d2. a d c f c2 cis4  d bes2 |
  a2.
  d_\piano a d c f c4. cis8 d4 g, a2 d2.

  \var
  d'4 f, d a' cis, a d f d c e c f a f c' e, cis |
  d8 c bes2 a4. b8 cis[ a] |
  d4_\piano f d a' cis, a
  d f d c e c f fis2 g4. cis,8 d4 g, a2 d,2.

  \var
  \tempo Allegro
  d'2. a d c f c2 cis4 d bes2 a2. |
  d a d c f c2 cis4 d8 g, a2 d2.

  \var
  %\tag-parts {\break}
  R2.^\soli
  a'16 e fis gis a cis, d e a, cis b a |
  d2 r4 |
  c'16 g a b c e, f g c, e d c |
  f2 r4 |
  c'16 g a b c e, f g c, e d c |
  d4 bes2 |
  a'16 e fis gis a cis, d e a, cis b a |
  d2^\tutti r4 |
  \tuplet 3/2 4 {
    a'8 cis a e a e cis e a
  }
  f2 r4 |
  \tuplet 3/2 4 {
    c'8 e c g c g e g c
  }
  a2 r4 |
  \tuplet 3/2 4 {
    b!8 d b cis e cis d e cis d bes g
  }
  a4 a,
  d2.

  \var
  r4  d' d, r a' a, |
  r d' d, r c' c, |
  r f' f, r c' c, |
  r d' d, r a' a, |
  r d' d, r a' a, |
  r d' d, r c' c, |
  r f' f, g e d |
  g, a2 d2.

  \var
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beamExceptions = #'()

  d'8 d, f a f d a'[ a, cis e cis a] |
  d' d, f a f d c' c, e g e c |
  f' f, a c a f c' c, e g e c |
  d' d, f a f d a'[ a, cis e cis a] |

  d' d, f a f d a'[ a, cis e cis a] |
  d' d, f a f d c' c, e g e c |
  f' f, a c a f b,! g' cis, a' d, d' |
  g, bes a4 a, |
  d2.

  \var
  %\tag-parts {\break}
  d'4^\soli d,2
  a'4 a,2 d'4 d,2 c'4 c,2 f4 f,2 c'4 c,2
  d'4 bes2
  a2.
  d'4 d,2 a'4 a,2 d'4 d,2 c'4 c,2 f4 f,2
  c'2 cis4 d8 g, a2 d,2.

  \var
  d'16 f a f
  d16 f a f
  d f e d
  a' cis e cis
  a cis e cis
  a cis b a |
  d, f a f
  d f a f
  d f e d c e g e c e g e c e d c |
  f a c a f a c a f a g f |
  c e g e c e g e cis e d cis |
  d f a f d f a f d f e d a cis e cis a cis e cis a cis b a |
  d f a f d f a f d f e d |
  a' cis e cis
  a cis e cis a cis b a |
  d, f a f d f a f d f e d c e g e c e g e c e d c |
  f a c a f a c a f a g f g bes d bes g bes d bes g bes a g |
  a cis e cis
  a cis e cis
  a cis b a d2.

  \var
  \tempo Adagio
  d,4^\tutti f d cis a cis d f d c e c f a f c e cis d bes2  a2.|
  d4_\piano f d cis a cis d f d c e c f a f c e cis d g, a d2.

  \var
  \tag-parts {\break}
  \tempo Vivace
  d'4^\soli r16 d,16 f d f d f d |
  a'4 r16 a, cis a cis a cis a |
  d4 r16 d f d f d f d |
  c4 r16 c16 e c e c e c |
  f4 r16 f a f a f a f |
  c'4 r16 c, e c e c e c |
  d4 r16 d f d bes g bes g |
  a4. b8 cis a |
  d'16^\tutti a f a d,4 r |
  a'16 e cis e a,4 r |
  d'16 a f a d,4 r |
  c'16 g e g c,4 r |
  \clef tenor
  f'16 c a c f,4 r |
  g'16 d bes d g,8 cis d cis |
  d g, a4 a, |

  \clef bass
  \time 3/8
  \tempo Allegro
  d4.^\soli

  \var
  r8 cis' a |
  r d g, |
  r e c r a' f |
  r cis a r d f |
  r g bes, r a' a, |
  r cis' a r d g, |
  r e c r a' f r cis a r d f |
  r cis a d4.


  \var
  %\tag-parts {\break}
  \time 4/4
  \tempo Andante
  d'8^\tutti[ d,] f d a' a, cis a |
  d e f d c bes a g |
  a g a b c d e cis |
  d e f g a b cis a |
  d_\piano[ d,] f d a' a, cis a d e f d c bes a g |
  f g a f g a bes g a g a a d,2

  \var
  %\tag-parts {\pageBreak}
  \tempo Allegro
  d'4 r a r |
  d r c r |
  f r c r
  bes r a r
  d_\piano r a r
  d r c r f r c4. cis8 |
  d8 g, a4 d,2 |

  \var
  d'4^\soli r a r |
  d r c r |
  f r c r
  bes r a r
  d r a r
  d r c r f r c4. cis8 |
  d8 g, a4 d,2 |

  \var
  %\tag-parts {\break}
  \tempo Adagio

  \time 3/4
  d'4^\tutti cis a
  d cis a
  f' e c
  f e c
  g' fis d g,2 a4 ~ a bes 2 |
  a4. b8 cis[ a] |
  d4_\piano cis a
  d cis a
  f' e c
  f e c g' fis d |
  g2 f4 g a a, |
  d2.

  \var
  %\tag-parts {\break}
  \bassoA
  g,,2 a4 ~ a bes2 |
  a4. b8 cis[ a] |
  \bassoA
  g,2 f4 g a a, |
  d2. |

  \var
  %\tag-parts {\break}
  \tempo Allegro
  d'4^\tutti f,4. d8
  a'4 cis,4. a8
  d4 f4. d8 c4 e4. c8 f4 a4. f8 |
  c'4 e,4. cis'8 |
  d4 f,4. bes8 |
  a4 a,2 |
  d'8 d, f4. d8 |
  a' a, cis4. a'8 |
  d d, f4. d'8 |
  c c, e4. c'8 |
  f f, a4. f8 |
  c' c, e4. cis'8
  d8 d, g,4 a |
  d2.

  \var
  %\tag-parts {\break}
  d4^\soli f d a cis a d f d c e c f a f c e cis |
  d f g a2. |
  d,4^\tutti f d a cis a d f d c e c f a f c e cis d g, a |
  d2.

  \var
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \set Timing.beamExceptions = #'()

  d'4^\soli r8 d, f d a'4 r8 a, cis a |
  d4 r8 d f d c4 r8 c e c |
  f4 r8 f a f c'4 r8 c, e c |
  d4. c8 bes g |
  a4. b8 cis a |
  d4 r8 d f d a'4 r8 a, cis a |
  d4 r8 d f d c4 r8 c e c |
  f4 r8 f a f c'4 r8 e cis a |
  d d, f g, a4 |
  d2.

  \var
  \tempo Adagio
  R2.
  a'4^\tutti e g ~ |
  g f2 |
  c'4 g bes ~ |
  bes a2 |
  e'4 b cis d c bes |
  a a, b cis2. |
  d'4 a8 b c4 ~ |
  c b2 |
  c4 g8 a bes4 ~ |
  bes a2 |
  bes4 a8 g f4 g a a, d2. |

  \var
  %\break
  \tempo Allegro
  \repeat unfold 2 {
    d2 r4 a2 r4 d2 r4 c2 r4 f2 r4
    bes,2 a4 bes c c, f2.
  }

  \var
  %\tag-parts {\break}
  \repeat unfold 2 {
    \tuplet 3/2 4 {
      f'8 c f a c a f a f
      c' g c e, g e c e c |
      g' d g bes d bes g bes g |
      d' a d f, a f d f d |
      g d g bes d bes g bes g |
    }
    a4. a,8 bes4 |
    g4 a2 |
    d2.
  }

  \var
  %\tag-parts {\break}
    d4 f d a' a,2 |
    d4 f d c c,2 |
    f'4 a f c' c,2 |
    d4 f d a2 r4 |
    d4 f d a' a,2 |
    d4 f d c c,2 |
    f'4 a f g2 f4 g a a, |
    d2.

  \var
  %\tag-parts {\break}
  d16 d' cis d d, d' e, d' f, d' d, d' |
  a, a' gis a a, a' b, a' cis, a' a, a' |
  d,16 d' cis d d, d' e, d' f, d' d, d' |
  c, c' b c c, c' d, c' e, c' c, c' |
  f, \clef tenor f' e f f, f' g, f' a, f' f, f' |
  \clef bass
  c, e' d e cis e b e a, e' g, e' |
  f, d' cis d bes a g f g f e d |
  a'8 a, cis e a4 |
  d,16 d' cis d d, d' e, d' f, d' d, d' |
  a, a' gis a a, a' b, a' cis, a' a, a' |
  d,16 d' cis d d, d' e, d' f, d' d, d' |
  c, c' b c c, c' d, c' e, c' c, c' |
  f, \clef tenor f' e f f, f' g, f' a, f' f, f' |
  \clef bass
  c, e' d e cis e b e a, e' g, e' |
  f, d' cis d g, d' cis d a d cis d |
  d,16 d' cis d d, d' e, d' f, d' d, d' |
  g, d' cis d a d cis  d a, d' cis d |
  d,16 d' cis d d, d' e, d' f, d' d, d' |
  g, d' cis d a d cis  d a, d' cis d |
  d,2. \bar "|."


}