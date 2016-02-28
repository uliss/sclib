\version "2.18.2"
\include "common.ily"

violaPart = \relative c'' {
  \tempo Adagio
  a2. ~ a ~ a2 b!4 c2. ~ c ~ c4 g e |
  a d,2 |
  a2. |
  a'_\piano ~ a ~ a2 b!4 c2. ~ c ~ c4 a2 |
  bes4 a a, a2.

  \var
  \tempo Allegro
  a'2. ~ a f2 a8( b!) | c2.
  a c4 g e a d,2 |
  e r4 |
  a2._\piano ~ a f2 a8( b!) |
  c2 bes4 bes a2 |
  g2 f4 |
  bes, a2 a2.

  \var
  a2. ~ a ~ a |
  c2. ~ c ~ c2 e4 |
  d2. e2 r4 |
  a,2. ~ a ~ a |
  c2. ~ c ~ c2 e4 |
  a,8( bes) a2 | a2. |

  \var
  R2. * 8 |
  a'2. ~ a ~ a |
  c ~ c g4 e a ~ a8 bes a4 a, |
  a2.

  \var
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beamExceptions = #'()

  r8 d^\soli f a f d r a cis e cis a r d f a f d r c e g e c |
  r f a c a f r c e g e c |
  r d f a f d r a cis e cis a |
  r d f a f d r a cis e cis a |
  r d f a f d r c e g e c |
  r f a c a f d4 e a bes a a, a2.

  \var
  d4^\tutti r r a r r d r r c r r f r r c r r d r r a r r |
  d r r a r r d r r c r r |
  f r r g e a r a,2 a2.


  \lbreak
  \var
  R2. * 16

  \var
  R2. * 16

  \var
  \tempo Adagio
  a'2. ~ a ~ a2 b!4 |
  c2. ~ c4 a2 |
  g2 e4 d2. e2. |
  r4 r8 a_\piano f d |
  r4 r8 e cis a |
  r4 r8 a' f d |
  r4 r8 g e c |
  r4 r8 c' a f |
  r4 r8 g e a
  f a bes4 a
  f2.

  \var
  %\tag-parts {\break}
  \tempo Vivace
  R2. * 8
  a4 r r a r r a r r c r r c r r
  g r r8 e |
  d bes' a4 a, |

  \tempo Allegro
  \time 3/8
  a4 r8

  \var
  R4. * 16 |

  \var
  \tempo Andante
  \time 4/4
  r2 a'4 a, |
  r2 c'4 c, |
  r2 c'4 c,8 e |
  a,2 a'4_\piano a, |
  r2 a'4 a, |
  r2 c'4 c, |
  R1
  a'4 a, a2

  \var
  \tempo Allegro
  r8 a' d,4 r8 e a,4 |
  r8 a' d,4 r8 g c,4 |
  r8 c' f,4 r8 g c,4 |
  r8 f bes,4 r8 e a,4 |
  r8 a' d,4 r8 e a,4 |
  r8 a' d,4 r8 g c,4 |
  r8 c' f,4 r8 g c,4 |
  r4 a a2

  \tag-parts {\pageTurn}
  \var
  \set Staff.timeSignatureFraction = #'(12 . 8)
  R1 * 8

  \var
  \time 3/4
  \set Staff.timeSignatureFraction = #'(3 . 4)
  \tempo Adagio
  d4 a cis d a cis f  c e f c e g d a bes2 e,4 ~ e d2 |
  e8 e' cis( d) e( cis) |
  d4_\piano a cis d a cis |
  f c e f c e g d fis d g d bes' a a, a2. |

  \var
  a2.^\soli ~ a c ~ c d ~ d2 cis4 ~ cis d2 cis2. |
  a2. ~ a c ~ c d ~ d4 e f ~ f e2 |
  d2.

  \var
  \tempo Allegro
  f2 f4 a2 e4 f2 a4 c2 g4 a2 c,4 e2 e4 f2 d4
  a'2.
  a2 f4 e a e f d a' c g e a2 a4
  g2 e4 d bes a a2.

  \var
  R2. * 8 |
  a2. ~ a ~ a2 d4 g, c e c2. ~ c2 a4 ~ |
  a8 a' bes g f e d2.

  \var
  R2. * 16

  \var
  \tempo Adagio
  f2. e d2 b!4 c2. ~ c |
  e4 b cis d c bes a2 r4 |
  R2.
  a'2. g ~ g f ~ f4 a a, bes a2 a2. |

  \var
  \tempo Allegro
  a2 r4 a2 r4 a2 r 4 c2 r4 c2 r4 bes g f d' c2 a2.
  R2. * 8 |

  \var
    c2 r4 c2 r4 d2 r4 d2 r4 bes4 d g e2 d4 bes a2 a2.

  R2. * 8 |

  \var
  a'4 a a a a a a d, f c c c c c c c c c a a a a a a |
  a' a a a a a a d, f c c c c c c g'2 a4 d, a2 a2.

  \var
  \lbreak
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beamExceptions = #'()
  a'4. g8 a f a4. d,8 e cis a'4. g8 a f c'4. f,8 g e |
  c'4. bes8 c a
  c[ g a g f e] a4 d, r
  a r r |
  a'4. g8 a f a4. d,8 e cis a'4. g8 a f
  c'4. f,8 g e
  c'4. bes8 c a c[ g a g f e]
  a4 bes a a2 r4 d, a2 f r4 d' a2 a2.
  \bar "|."



}