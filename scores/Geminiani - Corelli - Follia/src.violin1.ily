\version "2.18.2"
\include "common.ily"

violinI = \relative c' {
  \tempo Adagio
  d'4 d4. e8 cis2 cis4 |
  d4 d4.\trill c16( d) |
  e2 e4 |
  f f4. g8 e2 e4 |
  d8( cis) d4. e8 cis2 cis4 |

  d4_\piano d4. e8 cis2 cis4 |
  d4 d4.\trill c16( d) e2 e4 |
  f f4. g8 e4. e8 f4 d4 cis2 |
  d2.

  \var
  r4 a d ~ d a2 |
  r4 d f ~ f e2 |
  r4 c f ~ f e a f8( a,) d4. e8 cis2. |

  r4 a_\piano d ~ d a2 |
  r4 d f ~ f e2 |
  r4 a d bes4. a8 g[ a] |
  f( e) e4. d8 d2.

  \lbreak
  \var
  \tempo Allegro
  d8 f a f d f e a cis, e a, cis d f a f d f |
  e g e c e g |
  a f c a c a' |
  g c, e g a e |
  f a, d f e d |
  cis2 e,4 |
  f8 d f d' f, d' |
  cis d e cis e e, |
  f d f d' f, d' |
  g,[ e] g[ e'] g,[ e'] |
  f a, f' a f c |
  e c e g f e |
  d4 cis2 |
  d2.

  \lbreak
  \var
  R2. * 8
  r4 a d r e g r d f r g c r c, f |
  d e d ~ d cis2 d2.

  \var
  R2. * 16

  \var
  r4 f d, r e' a,, r f'' d, r g' c,, |
  r a'' f, r g' c,, r f' d, r e' a,, |
  r f'' d, r e' a,, r f'' d, r g' c,, r a'' f, |
  r g' f bes, e,2 |
  d2.

  \lbreak
  \var
  R2. * 16

  \var
  R2. * 16

  \var
  \tempo Adagio
  d'8([ f)] a,([ d)] f,([ a)] |
  e'( g) cis,( e) a,( cis) |
  f( a) d,( f) b,!( d) |
  e( g) c,( e) g,( bes) |
  a'( c) f,( a) c,( f) |
  e( g) c,( e) a( e) |
  f( a) d,( f) bes,( d) |
  cis([ e)] a,[ e] cis[ a] |

  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  r4 r8 a'_\piano d f |
  r4r8 e, a e' |
  r4 r8 a, d f |
  r4 r8 e, g e' |
  r4 r8 a, c f |
  r4 r e~ |e8 a, d d, a cis' |
  d4 d,2

  \var
  R2. * 8
  <d a' f'>4 r8 d' a d |
  cis4 r8 cis e a |
  <d,, a' f'>4 r8 a' d f |
  e4 r8 e g c |
  a4 r8 f a d |
  bes4. a8 g a |
  f( e) e2 |
  \tempo Allegro
  \time 3/8
  d4 r8 |

  \var
  R4. * 16

  \var
  \time 4/4
  \tempo Andante
  f4. f8 e2 |
  f4. f8 g2 |
  a4. a8 g2 |
  f4. f8 e2 |
  f4._\piano f8 e2 |
  f4. f8 g2 |
  a4. a8 g4 f8 e |
  f4 e d2 |

  \lbreak
  \var
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  r8 a d f r a, cis e |
  r a, d f r c e g |
  r c, f a r c, e g |
  r bes, d f r a, cis e |
  r a, d f r a, cis e |
  r a, d f r c e g |
  r c, f a r c, e g |
  f4 e d2

  \var
  \set Staff.timeSignatureFraction = #'(12 . 8)
  R1 * 8 |

  \var
  \set Staff.timeSignatureFraction = #'(3 . 4)
  \time 3/4
  \tempo Adagio
  a2. ~ a c ~ c d bes2 a4 ~ a g2 |
  a2. ~ a ~ a c ~ c d |
  bes4 cis d d,8( e16 f) cis2 d2.

  \var
  R2. * 16

  \lbreak
  \var
  \set Timing.beamExceptions = #'()
  r8 f' a a, d4
  r8 cis e a, a4
  r8 f' a a, d4 |
  r8 e g g, c4 |
  r8 a' c c, f4 |
  r8 e g e a4 |
  r8 f a a, d4 |
  r8 cis e e, a a, |
  f''4. a,8 d4 cis4. e8 a4 |
  f4. a8 d,4 |
  e4. g8 c4 |
  a4. c,8 f4 |
  e4. c8 g'4 |
  f4. d8 a cis |
  d4 d,2

  \var
  R2. * 8
  r8 a'4 a, d'8 ~ d cis a e cis a' |
  f a'4 d, f8 ~ |
  f e c g e c' |
  a c'4 f, a8 ~ |
  a[ g e c e a] f a, r d a, cis' |
  d4 d,2 |

  \var
  R2. * 16

  \var
  \tempo Adagio
  d'4 a d ~ d cis2 |
  a'4 d, f ~ f e2 |
  c'4 f, a ~ a g2 |
  f4 e d cis2. |
  a'4 e8 fis g4 ~ g fis2 |
  g4 d8 e f4 ~ f e2 |
  f4 c8 d ees4 ~ ees cis d ~ d8 e e4. d8 d2.

  \var
  \tempo Allegro
  d2 r4 cis2 r4 d2 r4 e2 r4 |
  a f a, d, e f ~ f e2 |
  f2.

  R2. * 8 |
  a'2 r4 g2 r4 bes2 r4 a2 r4 |
  bes2 r4 a4. g8 f e f g e2 d2.

  R2. * 8 |

  \var
  \set Timing.baseMoment = #(ly:make-moment 3/4)
  f8 d a d a f' e cis e cis e a |f d a d a f' |
  g e g e c g' |
  a f a f c a' |
  g e g e c g' |
  f d a d a d e cis e cis e a |
  f d a d a f'
  e cis e cis e a |
  f d a d a f' |
  g e g e c e |
  a f a f c a'  |
  g d e e, f f' |
  f f, e e' e e , |
  d2.

  \var
  f'4 f,2 e'2 r4 |
  f f,2 g'2 r4 |
  a4 a,2 |
  g'2 r4 |
  f f,2 e' r4 |

  f4 f,2 e'2 r4 |
  f f,2 g'2 r4 |
  a4 a,2 |
  g'2 r4 |
  f e r8 e |
  f2 r4 |
  bes,4 e,2 |
  d2.
  bes'4 e,2 |
  d2.

  \bar "|."




}