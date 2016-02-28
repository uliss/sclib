\include "common.ily"

continuo = \relative c {
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
  R2. * 8
  d2. a'4 a,2 f'2. c'4 c,2 |
  a'2.
  b!4 cis d ~ d8 g, a4 a, |
  d2.

  \var
  R2. * 16

  \var
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beamExceptions = #'()

  r8 d f a f d r a cis e cis a |
  r d f a f d r c e g e c |
  r f a c a f r c e g e c |
  r d f a f d r a cis e cis a |

  r d f a f d r a cis e cis a |
  r d f a f d r c e g e c |
  r f a c a f b,!4 cis d |
  g a a, |
  d2.

  \var
  R2. * 16

  \var
  R2. * 16

  \var
  \tempo Adagio
  d4 f d cis a cis d f d c e c f a f c e cis d bes2  a2.|
  d4_\piano f d cis a cis d f d c e c f a f c e cis d g, a d2.

  \var
  \lbreak
  R2. * 8
  d2. a d c f g2 r8 cis |
  d g, a4 a,

  \clef bass
  \time 3/8
  \tempo Allegro
  d4 r8

  \var
  R4. * 16


  \var
  %\tag-parts {\break}
  \time 4/4
  \tempo Andante
  d'8^\tutti[ d,] f d a'[ a,] cis a |
  d'[ d,] f d c bes a g |
  f g a b c d e cis |
  d e f g a b cis a |
  d_\piano[ d,] f d a'[ a,] cis a d e f d c bes a g |
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
  R1 * 8

  \var
  %\tag-parts {\break}
  \tempo Adagio

  \time 3/4
  d'4 cis a
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
  R2. * 16

  \var
  %\tag-parts {\break}
  \tempo Allegro
  d'4 f,4. d8
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
  R2. * 8
  d4 f d a cis a d f d c e c f a f c e cis d g, a |
  d2.

  \var
  R2. * 16

  \var
  \tempo Adagio
  d2. a d c f R2. * 2 a4 a, b | cis2.
  d g c, f bes4 a8 g f4 g a a, d2.

  \var
  %\break
  \tempo Allegro
  d2 r4 a2 r4 d2 r4 c2 r4 f2 r4
  bes,2 a4 bes c c, f2.
  R2. * 8

  \var
  f'2 r4 c2 r4 g'2 r4 d2 r4 |
  g2 r4 a4. a,8 bes4 |
  g a2 d2.
  R2. * 8

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
  d2. a d c f c4 cis2 d2. a'4 a,2
  d2. a d  c f
  c4 cis2 |
  d4 g a d,2 r4 |
  g4 a a, d2 r4
  g,4 a2 |
  d,2.
  \bar "|."


}