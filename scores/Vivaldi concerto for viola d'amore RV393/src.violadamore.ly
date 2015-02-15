\version "2.18.2"

#(define (make-eight o p)
   (make-music
    'NoteEvent
    'duration
    (ly:make-duration 3 0 1)
    'pitch
    (ly:make-pitch o (ly:pitch-notename p) 0))
   )

fig = #(define-music-function (parser location p1 p2) (ly:pitch? ly:pitch?)
         (
           make-music 'SequentialMusic
           'elements (
                       list
                       (make-music
                        'NoteEvent
                        'duration
                        (ly:make-duration 4 0 1)
                        'pitch
                        (ly:make-pitch (ly:pitch-octave p1) (ly:pitch-notename p1) 0))
                       (make-music
                        'NoteEvent
                        'duration
                        (ly:make-duration 4 0 1)
                        'pitch
                        (ly:make-pitch -2 (ly:pitch-notename p2) 0))
                       (make-music
                        'NoteEvent
                        'duration
                        (ly:make-duration 3 0 1)
                        'pitch
                        (ly:make-pitch 0 (ly:pitch-notename p1) 0))
                       )
           )
         )

figA = #(define-music-function (parser location p1 p2 p3) (ly:pitch? ly:pitch? ly:pitch?)
          (
            make-music 'SequentialMusic
            'elements (
                        list
                        (make-music
                         'NoteEvent
                         'duration
                         (ly:make-duration 4 0 1)
                         'pitch
                         (ly:make-pitch (ly:pitch-octave p1) (ly:pitch-notename p1) (ly:pitch-alteration p1)))
                        (make-music
                         'NoteEvent
                         'duration
                         (ly:make-duration 4 0 1)
                         'pitch
                         (ly:make-pitch -1 (ly:pitch-notename p2) (ly:pitch-alteration p2)))
                        (make-music
                         'NoteEvent
                         'duration
                         (ly:make-duration 3 0 1)
                         'pitch
                         (ly:make-pitch -1 (ly:pitch-notename p3) (ly:pitch-alteration p3)))
                        )
            )
          )

theme-one = {
  f16 e d8 a f a d, d'
  cis e16 d cis8 a e a a,
}

exposition-a = {
  \theme-one cis '
  d8 f16 e d8 a f a d, d' |
  cis a r a'
  \fig  g a
  \fig f a |
  \repeat unfold 2 {
    \fig e a
    \fig f a
    \fig g a
    \fig f a |
  }
  <a, e'>4 r8 f'
  e16( cis) d8
  \figA e cis d
  g4. f16 e f a f d e g e cis |
  d8 a d,[ f']
  e16( cis) d8
  e16( cis) d8
  g4. f16 e f a f d e g e cis |
}

vdaPartOne = \relative c' {
  \key d \minor
  \time 4/4
  \clef treble
  d'8^\markup\sp-tutti
  \exposition-a
  d8^\markup\sp-solo \theme-one cis' |
  d16 e f g a f e d cis e cis e a,8 <a f'> |
  <a e'> <a f'> <a g'> <a f'> << {f'\trill[ e]} \\ { a,[ a]} >> r <a, f'> |
  <a e'> <a f'> <a g'> <a f'> <a f'> <a e'> r e'' |
  f16 e f d g f g e f e f d g f g e |
  f8 e16 d e4\trill d r8 e, |
  f16 e f d g f g e f e f d g f g e |
  f8 e16 d e4\trill d8^\markup\sp-tutti f'16 e d8 a f a d, d'
  cis e16 d cis8 a e a a, e''
  f d a f |
  f'16^\markup\sp-solo g a g f e d cis? d e f e d c? bes a |
  bes c d c bes a g f c'4 r8 <c f> |
  <c e> <c f> <c g'> <c f> << {f\trill[ e]} \\ {c[ c]} >> r <c f> |
  <c e> <c f> <c g'> <c f> << {f\trill[ e]} \\ {c[ c]} >> r g' |
  a16( f e f) c( f e f) g( e d e) c(  g' f g) |
  a( f e f) c( f e f) g( e d e) c8 c |
  d16( bes a bes) e( c bes c) f( d c d) g( e d e) |
  a( f e f) bes( g f g) bes,8 g'16( f e d c  bes) |a8 f' g, e' f, d' e, c' |
  d, bes' c, a' <g bes> g'16( f e d c bes) |
  <f a>8 f' g16( f) g( e) f8 a f c |
  a f' g16( f) g( e) f8^\markup\sp-tutti a16 g f8 c |
  a c f, f' e g16 f e8 c |
  g c c, e' f a16 g f8 c a c f, f' e c r a' |
  \repeat unfold 2 { \fig g c \figA f c f \figA e c e \figA f c f  }
  \fig g c \figA f c f e4 r8 a |
  g16( e) f8 g16( e) f8 bes,4. a16 g |
  a8 f' g e f4 r8 a |
  g16( e) f8 g16( e) f8 bes,4. a16 g |
  a8 f' g e <f, c' f>^\markup\sp-solo a'16 g f c f c |
  <f, c' f>8 a'16 g f c f c bes e e g g e e bes |
  bes e e g g e e bes
  <f bes>8 <f a> r a |
  \tuplet 3/2 8 {
    \repeat unfold 4 {f'16[( g) a]}
    \tuplet-hide
    \repeat unfold 4 {d,[ e f]}
    \repeat unfold 4 {b,[ c d] }
  }
  gis,4 r 8 b |
  c16( a) e'( b) c( a) e'( b) c( a) a'( e) f( d) a'( e) |
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \tuplet-number-only
  \tuplet 3/2 8 {f16( a g f e d) }
  \tuplet-hide
  \tuplet 3/2 8 { e( g f e d c) d( f e d c b) c( e d c b a) }
  \set subdivideBeams = ##f

  e16( gis b c) d( c b a) d,( gis b c) d( c b a) |
  a' e c a b8.\trill a16 a8^\markup\sp-tutti c16 b a8 e' |
  c e a, a' gis b16 a  gis8 e |
  gis, b e, d' c a r e' |
  \fig d e \fig c e \fig b e \fig c e |
  \fig d e \fig c e b16 d d gis gis d d c |
  c8 a' b, gis' a^\markup\sp-solo g16 f e d c b |
  a c e c a c e a, b e gis e b e gis e |
  a, c e c a c e a, b e gis e b e gis e |
  a, c e c a c e a, b8 e, r4 |
  d'16 f a f d f a d, cis e a e cis e a e |
  d f a f d f a d, cis e a e cis e a e |
  d f a f d f a d, cis8 a r a' |
  bes, g' a, f' g, e' f, d' |
  << {e f16 e f8 f f\trill e s f e f16 e f8 f f\trill[ e]} \\ {a,8 a a a a a b\rest a a a a a a[ a]} >>
  r a' |
  <<
    {fis8 fis16 e fis8 fis g g16 f g8 f e e16 d e8 e f f16 e f8 e d d16 cis d8 d d[ cis] }
    \\
    {c4           c8   c   bes4    s8 s  bes4 bes8 bes a4 s8 s a4 a8 a a[ a] }
  >>
  r a' |

  gis16( e) g8 fis16( d) f8 e16 d cis b a8 a' |
  gis16( e) g8 fis16( d) f8 e16 d cis b a8 a |

  b b16 a b8 cis d8 c16 bes a8 a |
  b b16 a b8 cis d8 c16 bes a8 e' |
  f16( a f d) e( g e cis) \appoggiatura cis8 d4 r8 a' |
  g16 f e d cis b a g f g f e d8 a'' |
  g, g' f,  f' e, e' d, d' |
  cis16 d cis b a8 a b b16 a b8 cis |
  d8 c?16 bes? a8 e' f16( a f d) e( g e cis) |
  \appoggiatura cis8 d4. e8 f16( a f d) e( g e cis) |
  \appoggiatura cis8 d8^\markup\sp-tutti \exposition-a
  d4\fermata r r2 \bar "|."

}

vdaPartTwo = \relative c' {
  \key d \minor
  \time 3/4
  \clef treble
  \repeat volta 2 {
    r8. e'16 f8. d16 e8. e16 d8. a16 f8. a16 d,8. d'16 e8. e16 cis8. a16 g8. e'16 |
    f8. a16 f8.( e32 d) c8.( bes32 a) |
    bes8. g'16 e8.( d32 c) bes8.( a32 g) |
    a8. c16 d8. bes16 e8. c16 f8. a,16 c8. a16 c8. a16 f'8. a,16 c8. a16 c8. a16 f'8. a16
    g4.\trill f8 |
    f2.
  }
  \break
  \repeat volta 2 {
    r8. g16 a8. f16 c8. f16 e8. c16 bes8. e16 g8. bes,16 a8. a16 d8. f16 e8. d16 cis8. d16
    e4 r |
    d8. f16 d8. a16 bes8. c16 bes8. g'16 e8. b16 cis8. d16 cis8. e16 f8. d16 e8. e16 |
    d8. a16 f8. a16 d,8. d'16 e8. e16 cis8. a16 g8. e'16 |
    f8. g16 e4.\trill d8 d2.^\fermata
  }
}

vdaPartThree = \relative c' {
  \key d \minor
  \time 3/4
  \clef treble
  \repeat unfold 2 {
    d8 d' \tuplet 3/2 4 {f8( e) f f( e) f }
  }
  a,, e'' \tuplet 3/2 4 {g( f) g g( f) g }
  a,, e'' \tuplet 3/2 4 {g( f) g g( f) e } |
  f8 a4 f d8 |
  bes' g4 e bes8 |
  a a \tuplet 3/2 4 {cis( b ) a} d a |
  a a \tuplet 3/2 4 {cis( b ) a} e' a, |
  a a \tuplet 3/2 4 {cis( b ) a} f' a, |
  a a \tuplet 3/2 4 {cis( b ) a} g'8. g16 |
  g4 r r |
  \tuplet 3/2 4 { g8 f g e d e cis b cis } |
  a,4 r r |
  \tuplet 3/2 4 { g''8 f g e d e cis b cis } |
  a,4 r r |
  a'16 a g f e f e d cis d cis b |
  a8 e' cis a e' a, |
  d16 d' c bes a bes a g f g f e |
  <d f a d>8_\smarkup-fine d'^\markup\sp-solo  \tuplet 3/2 4 { f( e) d f ( e) d } |
  d d  \tuplet 3/2 4 { f( e) d f ( e) d } |
  e e \tuplet 3/2 4 { g( f) e g( f) e } |
  e e \tuplet 3/2 4 { g( f) e g( f) e } |
  \tuplet 3/2 4 {
    d f d d f d d f d
    \tuplet-hide
    f, a f f a f f a f d f d d f d d f d |
    <d f a d>( d' e f g a f e d) |
    e( c d e f g e d c) |
    d bes( c d e f e f g) |
    \tuplet-number-only
    cis, e16( d cis b) a8 e'16( d cis b) a8 g' e |
    f a,16( g f e) d8 a'16( g f e) d8 d' a |
    bes d16( c bes a) g8 d'16( c bes a) g8 c bes |
    \tuplet-hide
    a f a c a c f c f  e g e e g e e g e f a f f a f f a f |
    \tuplet-number-only
    e g16( f e d) c8 g'16( f e d) c8 d bes |
    a8 c16( bes a g) f8 c'16( bes a g) f8 a c |
    f c16( bes a g) f8 c'16( bes a g) f8 a c |
    f c a'
  }
  << {g4.\trill} \\ {c,4.} >> f8 |
  f^\markup\sp-tutti f \tuplet 3/2 4 {a8( g) a a( g) a } |
  f, c'\tuplet 3/2 4 {a'8( g) a a( g) a } |
  c,, g'' \tuplet 3/2 4 { bes( a) bes bes( a ) bes } |
  c,, g'' \tuplet 3/2 4 { bes( a) bes bes( a ) bes } |
  \tuplet 3/2 4 {a g a f e f a g a g f g e d e g f g bes a bes g f g e d e } |
  f16 f e d c d c bes a bes a g f f' e d c d c bes a bes a g |
  f8 bes c4 c, |
  \break
  \tuplet 3/2 4 {
    f'8^\markup\sp-solo c a f' c a f' c a |
    \tuplet-hide
    g' e c 
    g' e c 
    g' e c 
    a' f c
    a' f c
    a' f c
    g' e c 
    g' e c 
    g' e c 
    a' e cis
    a' e cis
    a' e cis
    a' f d
    a' f d
    a' f d
    g d b
    g' d b
    g' d b
    g' e c
    g' e c
    g' e c
    f c a
    f' c a
    f' c a
    f' d b
    f' d b
    f' d b
    e b gis
    e' b gis
    e' b gis
    e' c a
    e' c a
    e' c a
    a' e c
    a' e c
    a' e c
    a' f d
    a' f d
    a' f d
    a' f d
    a' f d
    a' f d
    gis e b
    gis' e b
    gis' e b
    a' e c
    a' e c
    a' e c
    a' e b
    a' e b
    a' e b
    gis' e b
    gis' e b
    gis' e b
  }
  \break
  a'8^\markup\sp-tutti a, \tuplet 3/2 4 {c( b) c c( b) c }
  a,8 a' \tuplet 3/2 4 {c( b) c c( b) c }
  e, b' \tuplet 3/2 4 { d( c) d d( c) d } |
  e, b' \tuplet 3/2 4 { d( c) d d( c) b } |
  e,4 gis b |
  \tuplet 3/2 4 { d8 c d b a b gis fis gis } |
  e4 r r |
  \tuplet 3/2 4 { d'8 c d b a b gis fis gis } |
  e4 r r |
  r16 e' d c b c b a gis a gis fis |
  e8 b' gis e b' e, |
  r16 e' d c b c b a gis a gis fis |
  e8 a c a e' e, |
  a'16^\markup\sp-solo g f e 
  a g f e
  a g f e
  f8 a, d, a' d, a' |
  g'16 f e d 
  g16 f e d 
  g16 f e d 
  e8 g, c, g' c, g' |
  f'16 e d c
  f16 e d c
  f16 e d c
  d8 f, bes, f' bes, f' |
  g'16 f e d
  g16 f e d
  g16 f e d
  cis8 a a, a'16( b) cis( b) cis( a) |
  d8 a a, a'16( b) cis( b) cis( a) |
  e'8 a, a, a'16( b) cis( b) cis( a) |
  f'8 a, a, a'16( b) cis( b) cis( a) |
  g'16( f g) a f( e f) g e( d e) f |
  d( cis d) e cis( b cis) d b( a b) cis |
  a a' g f a, g' f e a, f' e d |
  a a' g f a, g' f e a, f' e d |
  a8 a bes16( a bes c) bes d c bes |
  f8 f g16( f g a) g bes a g |
  d8 a' bes16( a bes c) bes d c bes |
  f8 f g16( f g a) g bes a g |
  d8 f' a16( g) f( e) d( c) bes( a) g8 e' 
  g16( f) e( d) c( bes) a( g) |
  f8 d' f16( e) d( c) bes( a) g( f) |
  e8 cis' e16( d) cis( b) a( g) f( e) |
  <d f a> a' a a
  <d, f a> a' a a
  <d, f a> a' a a
  <f a d> d' d d
  <f, a d> d' d d
  <f, a d> d' d d
  <d, f a> a' a a
  <d, f a> a' a a
  <d, f a> a' a a
  <d, g bes> bes' bes bes
  <d, g bes> bes' bes bes
  <d, g bes> bes' bes bes
  <d, g b> b' b b
  <d, g b> b' b b
  <d, g b> b' b b
  <e, g cis> cis' cis cis
  <e, g cis> cis' cis cis
  <e, g cis> cis' cis cis
  <f, a d> d' d d
  <f, a d> d' d d
  <f, a d> d' d d
  <e, g cis> cis' cis cis
  <e, g cis> cis' cis cis
  <e, g cis> cis' cis cis
  <f, a d> d' d d
  <f, a d> d' d d
  <f, a d> d' d d
  <e, g d'> d' d d
  <e, g d'> d' d d
  <e, g d'> d' d d
  <e, g cis> cis' cis cis
  <e, g cis>_\smarkup-dc-fine cis' cis cis
  <e, g cis> cis' cis cis
  \bar "|."
}