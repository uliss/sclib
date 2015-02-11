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
}

vdaPartThree = \relative c' {
  \key d \minor
  \time 3/4
  \clef treble
}