\version "2.18.2"
\include "common.ily"

violinII = \relative c' {
  \tempo Adagio
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 3/4)

  f8. e16 f8. g16 f8. g16 e8. d16 e8. g16 f8. e16 |
  f8.[ e16] f8. g16 f8.\trill[ e32( f)] |
  g8. f16 g8. bes16 a8. g16 a8. g16 a8. bes16 a8. bes16 |
  g8. f16 g8. a16 g8. a16 f8. e16 f8. g16 f8. g16 |
  e8. d16 e8. g16 f8. e16

  f8._\piano e16 f8. g16 f8. g16 e8. d16 e8. g16 f8. e16 |
  f8.[ e16] f8. g16 f8.\trill[ e32( f)] |
  g8. f16 g8. bes16 a8. g16 a8. g16 a8. bes16 a8. bes16 |
  g8. f16 g8. a16 f8. e16 |
  f8. e16 e4. d8 | d2.

  \var
  f2. e4 e'2~ |
  e4 d2 |
  g, g'4 ~ |
  g f a, | g c e |
  d8 a g2 |
  a2.

  f2._\piano e4 e'2~ |
  e4 d2 |
  g, g'4 |
  c,2 a'4 |
  d,4. e8 f4 |
  e cis2 |
  d2.

  \var
  \tempo Allegro

  \override Beam.auto-knee-gap = #3
  f,8 d f d' f, d' |
  cis d e cis e e, |
  f d f d' f, d' |
  g, e g e' g, e' |
  f c f a f c |
  e[ e,] g[ e'] a,[ g] |
  f( a) g2 a cis4 |
  d8 f d a d f |
  e a cis, e a, cis |
  d f d a d f |
  e g c, g' e g |
  a f a f c a' |
  g f g bes a g |
  f( e) e4. d8 |
  d2.

  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \var
  R2. * 8
  \tuplet 3/2 4 { d8( f d) a( d a) f( a d) }
  cis2 r4 |
  \tuplet 3/2 4 { d8( f d) a( d a) f( d' f) }
  e2 r4 |
  \tuplet 3/2 4 { f8( a f) c( f c) a( f' a) }
  g4 ~ \tuplet 3/2 4 { g8 a e f g e f g e  }
  e4. d8 d2.

  \var
  R2. * 16

  \var
  r4 d d, r cis' a, |
  r d' d, r e' c, |
  r f' f, r e' c, |
  r d' d, r cis' a, |
  r d' d, r cis' a, |
  r d' d, r e' c, |
  r f' f, r e' d |
  d, cis2 d2.

  \var
  R2. * 16

  \var
  R2. * 16

  \var
  \tempo Adagio
  r4 a' d r e g |
  r d f r g c |
  r c, f r c e a,2 g4 a2. ~ a ~ a ~ a2 b!4 |
  c2 bes4 a2. g2 a4 ~ a f e
  d2.

  \var
  \tempo Vivace
  R2. * 8
  r8 a' d f a4
  r8 a, cis e cis a |
  r a d f a4 |
  r8 c, e g e c |
  r c f a f a |
  d,4. e8 a,4 |
  d cis2 |
  \time 3/8
  \tempo Allegro
  d4 r8 |

  \var
  R4. * 16

  \var
  \time 4/4
  \break
  \tempo Andante
  d4. d8 cis2 d4. d8 e2 f4. f8 e2
  d4. d8 cis2 d4._\piano d8 cis2 d4. d8 e2 |
  f4. a,8 b cis d4 ~ |
  d cis d2 |

  \var
  \tempo Allegro
  d8 d, r d' cis a, r cis' |
  d d, r d' e c, r e' |
  f f, r f' e c, r c' |
  d bes, r d' cis a, r4 |
  d'8_\piano d, r d' cis a, r cis' |
  d d, r d' e c, r e' |
  f f, r f' e c, r e'
  d f, a,[ cis'] d2

  \var
  \set Staff.timeSignatureFraction = #'(12 . 8)
  R1 * 8 |

  \var
  \set Staff.timeSignatureFraction = #'(3 . 4)
  \time 3/4
  \tempo Adagio
  f,4 e2
  f4 e2 a4 g2 a4 g2
  bes4 a fis g2 cis,4 ~ |
  cis d2 |
  cis2. |
  f4_\piano e2
  f4 e2 |
  a4 g2 a4 g2 |
  bes4 a2 |
  g4 e f ~ f e2 |
  d2.

  \var
  R2. * 16

  \var
  \tempo Allegro
  a'4 d, r e a, r |
  a' d, r g c, r |
  c' f, r g c, r |
  a' d, r e a, r |
  r a' d, r e a, |
  r a' f g c g |
  r c f, |
  r c' e |
  a, g e d2. |

  \var
  R2. * 8
  f2. e2 e'4 ~ |
  e d b! |
  c2 g'4 ~ |
  g f2 ~ |
  f4 e2 |
  d4 d, a' f2. |

  \var
  R2. * 16

  \var
  \tempo Adagio
  R2. * 2 |
  d'2. g,4 g' e f2 f,4 |
  R2. * 5
  d'2. c ~ c |
  bes4 e, f ~ f8 e cis2 |
  d2.

  \var
  \tempo Allegro
  f'2 r4 e2 r4 |
  f2 r4 g2 r4 |
  f4 a, f d' g, a g g2 f2.
  \bar "||"

  R2. * 8

  \var
    f'2 r4 e2 r4 g2 r4 f2 r4 |
    d2 r4 cis4. cis8 d[ cis] d( e) cis2 d2.
  \bar "||"

  R2. * 8

  %\set Timing.baseMoment = #(ly:make-moment 1/4)
  %\set Timing.beatStructure = #'(1 1 1)
  \set Timing.beamExceptions = #'()

  \var
  d8 f d a f d cis' e cis a e cis |
  d' f d a f d e' g e c g e |
  f' a f c a f e' g e c g e |
  d' f d a f d cis' e cis a e cis |
  d' f d a f d cis' e cis a e cis |
  d' f d a f d e' g e c g e |
  f' a f c a c |
  b![ g' cis, e d a] |
  d f, d' e, cis' e, |
  d'2.

  \var
  d4 d,2 cis'2 r4 |
  d4 d,2 e'2 r4 |
  f4 f,2 e'2 r4 |
  d d,2 cis'2 r4 |
  d4 d,2 cis'2 r4 |
  d4 d,2 e'2 r4 |
  f4 f,2 e'2 r4 |
  d4 d r8 cis8 |
  d2 r4 |
  d,4 cis2 |
  d2 r4 |
  d4 cis2 d2.
  \bar "|."






}