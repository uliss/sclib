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

vdaPartOne = \relative a' {
  \clef "treble" \key f \major \time 4/4 \partial 8  a8-\tutti
  %\tempo 4=80 {Allegro}
  %^\markup{ \bold {Allegro} }  | % 1
  d8  d  d  d  d16 (
  e16  f )  e  d8  a  | % 2
  d8  d  d  d
  d16 (  e  f )  e
  d8  a  | % 3
  f'8  g16  f  e8  d
  cis8  a,  a  a' | % 4
  d8  d  d  d  d16 (
  e16  f )  e  d8  a
  | % 5
  d8  d  d  d  d16 (
  e16  f )  e  d8  a
  | % 6
  f'8  g16  f  e8  d
  cis4 r8  a' | % 7
  fis8  g16 (  fis )  e (
  d16 )  e (  fis )  g8
  g,8  g  g' | % 8
  e8  f16 (  e )  d (
  c16 )  d (  e )  f8
  f,8  f  g'  | % 9
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  g'  | \barNumberCheck #10
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  a'  | % 11
  f8  e16  d  e8  cis
  d4 r8  a'  | % 12
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  g' | % 13
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  a'  | % 14
  \tag-parts { \break }
  f8  e16  d  e8  cis
  d4 r8-\solo  a | % 15
  d8  d  d  d  d16
  e16  f  e  d8  a
  | % 16
  f'8  f  f  f  f16
  g16  a  g  f8  d
  | % 17
  bes'16 (  g )  a (  f )
  g16 (  e )  f (  d )
  e16 (  cis )  d (  b )
  a8  a | % 18
  d8  d  d  d  d16
  e16  f  e  d8  a
  | % 19
  f'8  f  f  f  f16
  g16  a  g  f8  d
  | \barNumberCheck #20
  bes'16 (  g )  a (  f )
  g16 (  e )  f (  d )
  \grace {  d8 ( }  cis4 ) \trill r8  a' | % 21
  fis16 (  d )  es (  c )
  d16 (  bes )  c (  a )
  bes8.  a16  g8  g' | % 22
  e16  c  d  bes  c
  a16  bes  g  a8.  g16
  f8  a | % 23
  f16 (  e  d )  a'  d
  cis16  d  a  f (  e
  d16 )  d'  f  e  f
  d16 | % 24
  f,16 (  e  d )  d'  a'
  gis16  a  b  gis4 ~
  gis16  gis32 (  a  b16 )
  b16 | % 25
  d,16  d32 (  e  f16 )
  f16  b,  b32(
  c32   d16)  d  gis,  gis32 (
  a32   b16)  b  e,  e32 (
  fis32   gis16)  gis | % 26
  \set subdivideBeams = ##t
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = #'(8 8)

  d4 \times 2/3 {
    r16  b' (  c
  }

  \omit TupletBracket
  \times 2/3  {
    d16  c  b )
  }

  \times 2/3  {
    c16  a (  b
  }

  \times 2/3  {
    c16  b  a )
  }

  \times 2/3  {
    e'16  a, (  b
  }

  \times 2/3  {
    c16  b  a )
  }
  | % 27

  \times 2/3  {
    e'16  a, (  b
  }

  \times 2/3  {
    c16  b  a )
  }

  \times 2/3  {
    e'16  a, (  b
  }

  \times 2/3  {
    c16  b  a )
  }
  a'16  e  c  a  b8.
  \trill  a16 | % 28

  \override TupletBracket.bracket-visibility = ##t
  a4 \times 2/3 {
    r16  a (  b
  }

  \omit TupletBracket
  \times 2/3  {
    c16  b  a )
  }

  \times 2/3  {
    e'16  a, (  b
  }

  \times 2/3  {
    c16  b  a )
  }

  \times 2/3  {
    e'16  a, (  b
  }

  \times 2/3  {
    c16  b  a )
  }

  \set subdivideBeams = ##f
  | % 29
  a'16  e  c  a  b8.
  \trill  a16  a8-\tutti  a  a  a |
  \barNumberCheck #30
  a16 (  b  c )  b
  a8  e'  a,  a  a
  a8 | % 31
  a16 (  b  c )  b
  a8  a  e'  f16  e  d8
  c8 | % 32
  b4 r8  e  cis  d16 (
  cis16 )  b (  a )  b (
  cis16 ) | % 33
  d8  d,  d  d'  b
  c16 (  b )  a (  g )
  a16 (  b ) | % 34
  c8  c,  c  d'   c
  d16 (  c )  b (  a )
  gis16 (  a ) | % 35
  e8  e  e  d'  c
  d16 (  c )  b (  a )
  gis16 (  a ) | % 36
  e8  e  e  d'   c
  b16  a  b8  gis | % 37
  a4 r8  d   c  d16 (
  c16 )  b (  a )  gis (
  a16 ) | % 38
  e8  e  e  d'  c
  d16 (  c )  b (  a )
  gis16 (  a ) | % 39
  e8  e  e  d'  c
  b16  a  b8  gis |
  \barNumberCheck #40
  a16-\solo (  b  a )  f'
  e16  d  c  b  a
  (  b16  a )  f'  e
  d16  c  b | % 41
  a16 (  b  a )  a'
  b16  c  b  a
  gis8.  fis16  e4 | % 42
  a,16 (  b  a )  f'
  e16  d  c  b  a
  (  b16  a )  f'  e
  d16  c  b | % 43
  a16 (  b  a )  a'
  b16  c  b  a  a4
  gis4 | % 44
  e16 (  f  g )  f
  e16  f  e  d
  cis16 (  d  e )  d  cis
  d16  cis  b | % 45
  a16 (  b  cis )  b
  a16  bes  a  g  f8. \trill
  e16  d4 | % 46
  d'16 (  e  f )  e
  d16  e  d  c  b
  (  c16  d )  c  b
  c16  b  a | % 47
  g16 (  a  b  a )  g
  a16  g  f  e8. \trill  d16
  c8  c' | % 48
  <<
    {
      b8  c  d  c  c \trill b8 b\rest  c | % 49
      b8  c  d  c  c \trill
      b8 b\rest
    } \\
    {
      g2 g8 g s g
      g2 g8  g s
    }
  >>

  g' | \barNumberCheck #50
  a,8  f'  g,  e'  f,
  d'8  e,  c' | % 51
  <g b>4 r8  c  d16 (  b )
  c8  f16 (  d )  e8 | % 52
  a16 (  f )  g8  r
  f8  e  d16  c  d8. \trill
  c16 | % 53
  c4 r8  c  d16 (  b )
  c8  f16 (  d )  e8 | % 54
  a16 (  f )  g8  r
  f8  e  d16  c  d8. \trill
  c16 | % 55
  c8-\tutti  c  c  c  c16 (
  d16  e )  d  c8
  g'8 | % 56
  c,8  c  c  c  c16 (
  d16  e )  d  c8  c
  | % 57
  g'8  f16  e  d8  c
  b8.  a16  g8  g' | % 58
  f8  e16 (  d )  c (
  b16 )  c (  d )  e8.
  d16  c8  c' | % 59
  bes8  a16 (  g )  f (
  e16 )  f (  g )  a8.
  g16  f8  f | \barNumberCheck #60
  es8  d16 (  c )  bes (
  a16 )  bes (  c )  d8.
  c16  bes8  f' | % 61
  bes8  a16 (  g )  f (
  e16 )  f (  g )  a8.
  g16  f8  bes, | % 62
  a8  f'  g  e  f4 r8
  f8  | % 63
  bes8  a16 (  g )  f (
  e16 )  f (  g )  a8.
  g16  f8  bes, | % 64
  a8  f'  g  e  f4 r8
  <<
    {
      a,8 | % 65
      bes8  c16  d  c8  bes
      bes4 \trill  a8  e' | % 66
      f8  g16  a  g8  f  f4
      \trill  e8  g | % 67
      a8  bes16  c  bes8  a
    }
    \\
    { f,8 f f f f f4 f8 c' c c c c  c4 c8 s f s s f }
  >>
  <f a>8 <e g> r  c | % 68
  c16  bes  a  g  f
  e16  d  c  <bes d>8  <bes d>
  <bes d>8  d' | % 69
  d16  c  bes  a  g
  f16  e  d  <c e>8  <c e>
  <c e>8  e' | \barNumberCheck #70
  e16  d  c  bes  a
  g16  f  e  <d f>8  <d f>
  <d f>8  f' | % 71
  \time 2/4
  f16  e  d  c  bes
  a16  g  f | % 72
  \time 4/4
  e4 r8  f'  g16 (  c, )
  a'16 (  c, )  bes' (  c,
  )  a'16 (  c, ) | % 73
  g'16 (  c, )  a' (  c, )
  bes'16 (  c, )  a' (  c,
  )  g'16 (  c, )  a' (  c,
  )  bes'16 (  c, )  g' (  c,
  ) | % 74
  <<
    {
      a'8  g16  f  g4 \trill  % 77
    }
    \\
    { c,4 c }
  >>
  <f,
  c' f>4 r8  f' | % 75
  g16 (  c, )  a' (  c, )
  bes'16 (  c, )  a' (  c,
  )  g'16 (  c, )  a' (  c,
  )  bes'16 (  c, )  a' (  c,
  ) | % 76
  g'16 (  c, )  a' (  c, )
  bes'16 (  c, )  g' (  c,
  )
  <<
    {
      a'8  g16  f  g4 \trill | % 77
    }
    \\
    { c,4 c }
  >>
  <f, c' f>8-\tutti  f'  f  f
  f16 (  g  a )  g
  f8  c | % 78
  f8  f  f  f  f16 (
  g16  a )  g  f8  c
  | % 79
  a'8  bes16  a  g8  f
  e8  c,  c  c' | \barNumberCheck
  #80
  f8  f  f  f  f16 (
  g16  a )  g  f8  c
  | % 81
  f8  f  f  f  f16 (
  g16  a )  g  f8  a
  | % 82
  cis,8  cis  cis  cis
  cis16 (  d  e )  d
  cis8  a' | % 83
  cis,8   cis   cis  cis  cis16 (  d  e )  d
  cis8  a' | % 84
  fis8  g16 (  fis )  e (
  d16 )  e (  fis )  g8
  g,8  g  g' | % 85
  e8  f16 (  e )  d (
  c16 )  d (  e )  f8
  f,8  f  g'  | % 86
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  g' | % 87
  \tag-parts { \break }
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  <cis a'>-\solo | % 88
  <cis a'>8  <cis g'>  <cis g'>
  <d f>8  <d f>  e16 (  f )
  g16 (  f )  g (  e ) | % 89
  <cis a'>8  <cis g'>  <cis g'>
  <d f>8  <d f>  d,16 (  e )
  f16 (  e )  f (  d ) | \barNumberCheck
  #90
  <f bes>8  <f a>  <f a>  <e g>
  <e g>8  e16 (  f )  g (  f
  )  g16 (  e ) | % 91
  <e a>8  <e g>  <e g>  <d f>
  <d f>8  d16 (  e )  f (  e )
  f16 (  d ) | % 92
  <g e'>8  <g d'>  <g d'>  <a
  cis>8  <a cis>  a16 (  b )
  cis16 (  b )  cis (  a )
  | % 93
  d8  a16 (  b )  cis (
  b16 )  cis (  a )  e'8
  a,16 (  b )  cis (  b )
  cis16 (  a ) | % 94
  f'8  a,16 (  b )  cis (
  b16 )  cis (  a )  g'
  e16  f  cis  d
  a16  bes  g | % 95
  a16  e  f  d \clef "alto"
  e16  cis  d  g,  a8  b16
  cis16  d  e  f  g
  | % 96
  \clef "treble" | % 96
  a16 (  cis  b  a )
  d16 (  f  e  d )
  a'16 (  cis,  b  a )
  d16 (  f  e  d ) | % 97
  a'16 (  cis,  b  a )
  d16 (  f  e  d )
  a'8  d,  e4 \trill | % 98
  <d,, a' d f a d>4 r8  a'''-\tutti   fis
  g16 (  fis )  e (  d )
  e16 (  fis ) | % 99
  g8  g,  g  g'  e
  f16 (  e )  d (  c )
  d16 (  e ) | \barNumberCheck #100
  f8  f,  f  g'  f
  g16 (  f )  e (  d )
  cis16 (  d ) | % 101
  a8  a  a  g'   f
  (  g16 )  f  e (  d )
  cis16 (  d ) | % 102
  a8  a  a  a'  f
  e16  d  e8  cis | % 103
  d4 r8  g  f  g16 (
  f16 )  e (  d )  cis (
  d16 ) | % 104
  a8  a  a  g'
  f8  g16 (  f )  e (  d )
  cis16 (  d ) | % 105
  a8  a  a  a'  f
  e16  d  e8  cis | % 106
  d1 \fermata \bar "|."

}

vdaPartTwo = \relative a' {
  \omit TupletBracket
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 3,3
  \time 4/4
  \times 2/3  {
    d16 (  a' g16
  }

  \times 2/3  {
    f16  e  d )
  }
  d8  d
  \times 2/3  {
    cis16 (  e  d
  }

  \times 2/3  {
    cis16  b  a )
  }
  g'8  g | % 108

  \times 2/3  {
    f16 (  a  g
  }

  \times 2/3  {
    f16  e  d )
  }

  \times 2/3  {
    f16 (  a  g
  }

  \times 2/3  {
    f16  e  d )
  }

  \times 2/3  {
    cis16 (  e  d
  }

  \times 2/3  {
    cis16  b  a )
  }

  \times 2/3  {
    cis16 (  e  d
  }

  \times 2/3  {
    cis16  b  a )
  }
  | % 109

  \times 2/3  {
    f'16 (  a  g
  }

  \times 2/3  {
    f16  e  d )
  }

  \times 2/3  {
    gis16 (  b  a
  }

  \times 2/3  {
    gis16  fis  e )
  }
  a8  a, r  e'

  \times 2/3  {
    a16 (  e  d
  }

  \times 2/3  {
    c16  b  a )
  }
  b8. \trill  a16
  \times 2/3  {
    a16 (  e'  d
  }

  \times 2/3  {
    c16  b  a )
  }
  a'8  a | % 111

  \times 2/3  {
    gis16 (  b  a
  }

  \times 2/3  {
    gis16  fis  e )
  }
  d8  d
  \times 2/3  {
    c16 (  e  d
  }

  \times 2/3  {
    c16  b  a )
  }
  f'32 (  g  a16 )  f32 (
  g32  a16 ) | % 112

  \times 2/3  {
    b,16 (  c  d )
  }

  \times 2/3  {
    d16 (  e  f )
  }

  \times 2/3  {
    f16 (  g  a )
  }

  \times 2/3  {
    a16 (  g  f )
  }

  \times 2/3  {
    e16 (  g  f
  }

  \times 2/3  {
    e16  d  c )
  }

  \times 2/3  {
    bes'16 (  g  a
  }

  \times 2/3  {
    bes16  a  g )
  }
  | % 113

  \times 2/3  {
    a16 (  f  g
  }

  \times 2/3  {
    a16  g  f )
  }

  \times 2/3  {
    c16 (  f  g
  }

  \times 2/3  {
    a16  g  f )
  }

  \times 2/3  {
    c'16 (  f,  g
  }

  \times 2/3  {
    a16  g  f )
  }
  g8. \trill  f16 | % 114
  f4 r8  a
  \times 2/3  {
    f16 (  a  g
  }

  \times 2/3  {
    f16  e  d )
  }
  d8  d | % 115

  \times 2/3  {
    cis16 (  e  d
  }

  \times 2/3  {
    cis16  b  a )
  }
  g'8  g  f16 (  a )
  a8 \trill  f16 (  a )  a8 \trill | % 116

  \times 2/3  {
    bes,16 (  d  c
  }

  \times 2/3  {
    bes16  a  g )
  }

  \times 2/3  {
    bes16 (  d  c
  }

  \times 2/3  {
    bes16  a  g )
  }
  bes'4 ~
  \times 2/3  {
    bes16  a (  g
  }

  \times 2/3  {
    f16  e  d )
  }
  | % 117

  \times 2/3  {
    cis16 (  e  cis )
  }

  \times 2/3  {
    a16 (  f'  d )
  }

  \times 2/3  {
    a16 (  g'  e )
  }

  \times 2/3  {
    a,16 (  a'  f )
  }
  \tiny
  \times 2/3  {
    a,16  e'  cis
  }

  \times 2/3  {
    a16  f'  d
  }

  \times 2/3  {
    a16  g'  e
  }

  \times 2/3  {
    a,16  a'  f
  }
  \normalsize
  | % 118

  \times 2/3  {
    e16 (  g  f
  }

  \times 2/3  {
    e16  d  cis )
  }

  \times 2/3  {
    f16 (  a  g
  }

  \times 2/3  {
    f16  e  d )
  }

  \times 2/3  {
    bes'16 (  a  g
  }

  \times 2/3  {
    f16  e  d )
  }
  cis8. \trill  d16 | % 119
  d4 r r2
  R1 \bar "|."
}

partthree-a = {
  d8-\tutti d' \tuplet 3/2 4 {f8( e) f f( e) f }
  d,8 d' \tuplet 3/2 4 {f8( e) f f( e) f }
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
}

vdaPartThree = \relative a' {
  \key d \minor
  \time 3/8  | % 121
  d16 (-\tutti  e
  f4 ) | % 122
  e8  d  a' | % 123
  g16  f  e8  d | % 124
  cis8  b  a | % 125
  d16 (  e  f4 ) | % 126
  e8  d  a' | % 127
  g16  f  e8  d | % 128
  a4 r8 | % 129
  a'16  a  a  a  a
  a16 |
  bes8  g  e | % 131
  c16  g'  g  g  g
  g16 | % 132
  a8  f  d | % 133
  bes16  f'  f  f
  f16  f | % 134
  g8  e  cis | % 135
  a4 r8 | % 136
  d16 (  e  f4 ) | % 137
  e8  d  a' | % 138
  a,16 (  bes  c4 ) | % 139
  bes8  a  a' |
  d,16 (  e  f4 ) | % 141
  e8  d  a' | % 142
  a,16 (  bes  c4 ) | % 143
  bes8  a  c | % 144
  bes8  a  c | % 145
  bes8  a  g' | % 146
  f16  e  d8  cis | % 147
  d4 r8 | % 148
  a16 (  bes  c4 ) | % 149
  bes8  a  c |
  bes8  a  c | % 151
  bes8  a  g' | % 152
  f16  e  d8  cis | % 153
  d4 r8 | % 154
  d16 (  e  f4 ) | % 155
  e8  d  a' | % 156
  g16  f  e8  d | % 157
  cis8  b  a | % 158
  d16 (  e  f4 ) | % 159
  e8  d  a' |
  g16  f  e8  d | % 161
  a4 r8 | % 162
  a'16-\solo  d,  f  d
  a'16  d, | % 163
  f16  d  a'  d,
  f16  d | % 164
  bes'16  d,  g  d
  bes'16  d, | % 165
  g16  d  bes'  d,
  g16  d | % 166
  g16  c,  e  c
  g'16  c, | % 167
  e16  c  g'  c,
  e16  c | % 168
  a'16  c,  f  c
  a'16  c, | % 169
  f16  c  a'  c,
  f16  c |
  f16  bes,  d  bes
  f'16  bes, | % 171
  d16  bes  f'  bes,
  d16  bes | % 172
  g'16  bes,  d  bes
  g'16  bes, | % 173
  d16  bes  g'  bes,
  d16  bes | % 174
  cis32 (  a'  gis  a )
  a,8 r | % 175
  f'16  g  f  e  d
  c16 | % 176
  d16  e  d  c
  bes16  a | % 177
  bes16  c  bes  a  g
  f16 | % 178
  c'4. | % 179
  f16  g  f  e  d
  c16 |
  d16  e  d  c
  bes16  a | % 181
  bes16  c  bes  a  g
  f16 | % 182
  c'16  a  d  bes
  e16  c | % 183
  f16  d  g  e  a
  f16 | % 184
  bes4. ~ | % 185
  bes8  a16 (  g )  f (
  e16 ) | % 186
  f8  c  f | % 187
  bes32 (  a  g  f )
  g4 \trill | % 188
  f16 (-\tutti  g  a4 ) | % 189
  g8  f  c |
  bes16  a  g8  f | % 191
  e8  d  c | % 192
  f'16 (  g  a4 ) | % 193
  g8  f  c | % 194
  bes16  a  g8  f | % 195
  c'4. | % 196
  c'16  c  c  c  c
  c16 | % 197
  c8  a  f | % 198
  d16  bes'  bes  bes
  bes16  bes | % 199
  bes8  g  e |
  c16  a'  a  a  a
  a16 | % 201
  a8  f  d | % 202
  bes16  g'  g  g
  g16  g | % 203
  g8  e  c | % 204
  a4 r8 | % 205
  f'16 (  g  a4 ) | % 206
  g8  f  c' | % 207
  c,16 (  d  e4 ) | % 208
  d8  c  c' | % 209
  f,16 (  g  a4 ) |
  g8  f  c' | % 211
  c,16 (  d  e4 ) | % 212
  d8  c  e | % 213
  d8  c  e | % 214
  d8  c  bes' | % 215
  a16  g  f8  e | % 216
  f16 ( -\solo  c )  c4 \trill | % 217
  g'16 (  c, )  c4 \trill | % 218
  a'16 (  c, )  c4 \trill | % 219
  bes'8  a16  g  f
  e16 |
  f8  a,  f | % 221
  f'16 (  c )  c4 \trill | % 222
  g'16 (  c, )  c4 \trill | % 223
  a'16 (  c, )  c4 \trill | % 224
  a'16  bes  c8  a | % 225
  a4 \trill  g8 | % 226

  \set Staff.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beamExceptions = #'()
  \set Staff.beatStructure = #'(1 1 1)
  \omit TupletBracket
  \times 2/3  {
    c,16 (  f )  a
  } \times 2/3  {
    c,16 (  f )  a
  } \times 2/3  {
    c,16 (  f )  a
  }
  | % 227
  \times 2/3  {
    bes,16 (  d )  f
  }

  \times 2/3  {
    bes,16 (  d )  f
  }

  \times 2/3  {
    bes,16 (  d )  f
  }
  | % 228

  \times 2/3  {
    d16 (  g )  bes
  }

  \times 2/3  {
    d,16 (  g )  bes
  }

  \times 2/3  {
    d,16 (  g )  bes
  }
  | % 229

  \times 2/3  {
    c,16 (  e )  g
  }

  \times 2/3  {
    c,16 (  e )  g
  }

  \times 2/3  {
    c,16 (  e )  g
  }
  |

  \times 2/3  {
    e16 (  a )  c
  }

  \times 2/3  {
    e,16 (  a )  c
  }

  \times 2/3  {
    e,16 (  a )  c
  }
  | % 231

  \times 2/3  {
    d,16 (  f )  a
  }

  \times 2/3  {
    d,16 (  f )  a
  }

  \times 2/3  {
    d,16 (  f )  a
  }
  | % 232

  \times 2/3  {
    f16 (  bes )  d
  }

  \times 2/3  {
    f,16 (  bes )  d
  }

  \times 2/3  {
    f,16 (  bes )  d
  }
  | % 233

  \times 2/3  {
    e,16(  c)  e
  }

  \times 2/3  {
    e16(  c)  e
  }

  \times 2/3  {
    e16(  c)  e
  }
  | % 234

  \times 2/3  {
    f16(  c)  f
  }

  \times 2/3  {
    f16(  c)  f
  }

  \times 2/3  {
    f16(  c)  fis
  }
  | % 235

  \times 2/3  {
    fis16(  d)  fis
  }

  \times 2/3  {
    fis16(  d)  fis
  }

  \times 2/3  {
    fis16(  d)  fis
  }
  | % 236

  \times 2/3  {
    g16(  d)  g
  }

  \times 2/3  {
    g16(  d)  g
  }

  \times 2/3  {
    g16(  d)  g
  }
  | % 237

  \times 2/3  {
    a16(  d,)  a'
  }

  \times 2/3  {
    a16(  d,)  a'
  }

  \times 2/3  {
    a16(  d,)  a'
  }
  | % 238

  \times 2/3  {
    bes16(  d,)  bes'
  }

  \times 2/3  {
    bes16(  d,)  bes'
  }

  \times 2/3  {
    bes16(  d,)  g
  }
  | % 239

  \times 2/3  {
    g16(  bes,)  g'
  }

  \times 2/3  {
    g16(  bes,)  g'
  }

  \times 2/3  {
    g16(  bes,)  g'
  }


  \times 2/3  {
    g16(  a,)  g'
  }

  \times 2/3  {
    g16(  a,)  g'
  }

  \times 2/3  {
    g16(  a,)  g'
  }
  | % 241

  \times 2/3  {
    fis16(  a,)  fis'
  }

  \times 2/3  {
    fis16(  a,)  fis'
  }

  \times 2/3  {
    fis16(  a,)  fis'
  }
  \set Staff.beatStructure = #'(3)
  | % 242
  g,16-\tutti (  a )  bes4 | % 243
  a8  g  d' | % 244
  c16  bes  a8  g | % 245
  fis8  e  d | % 246
  g16 (  a )  bes4 | % 247
  a8  g  d' | % 248
  d,16 (  es  f4 ) | % 249
  es8  d  d'
  d,16 (  es  f4 ) | % 251
  es8  d  f | % 252
  es8  d  f | % 253
  es8  d  c' | % 254
  bes16  a  g8  fis | % 255
  g4 r8 | % 256
  d16 (  es  f4 ) | % 257
  es8  d  f | % 258
  es8  d  f | % 259
  es8  d  c'
  bes16  a  g8  fis | % 261
  g4 r8 | % 262
  d'16 (-\solo  e  f4 ) | % 263
  e8  d  a' | % 264
  g16  f  e8  d | % 265
  cis16  d  b  cis
  a8 | % 266
  d16 (  e  f4 ) | % 267
  e8  d  a' | % 268
  g16  f  e8  d | % 269
  a,4 r8
  d'16 (-\tutti   e  f4 ) | % 271
  e8  d  a' | % 272
  g16  f  e8  d | % 273
  cis16  d  b  cis
  a8 | % 274
  d16 (  e  f4 ) | % 275
  e8  d  a' | % 276
  g16  f  e8  d | % 277
  a4 r8 | % 278
  a'8  fis4 \trill | % 279
  g16 (  d  g )  a
  bes8
  g8  e4 \trill | % 281
  f16 (  c  f )  g
  a8 | % 282
  f8  d4 \trill | % 283
  e16 (  bes  e )  f
  g8 | % 284
  e8  cis4 \trill | % 285
  d16 (  a  d )  e
  f8 | % 286
  f16 (  d  f )  g
  a8 | % 287
  d,16 (  a  d )  e
  f8 | % 288
  f16 (  d  f )  g
  a8 | % 289
  f,16  d  g  d  a'
  d,16
  bes'16  d,  a'  d,  g
  d16 | % 291
  f16  d  g  d  a'
  d,16 | % 292
  bes'16  d,  a'  d,  g
  d16 | % 293
  f16  d  g  d  a'
  d,16 | % 294
  bes'16  d,  a'  d,  g
  d16 | % 295
  f16  a  d  e  f8
  | % 296
  a8  g16  f  e  d
  | % 297
  cis16  b  a8  g' | % 298

  \times 2/3  {
    f16 (  e  d )
  }
  << 
    { e8.[ \trill  d16] }
    \\
    { a4  }
  >>
  d4.
  a'8  g16  f  e  d
  | % 301
  cis16[  b  a8]
  \times 2/3 { g'16 f e } | % 302

  \times 2/3  {
    f16 (  e  d )
  }
 << 
    { e8.[ \trill  d16] }
    \\
    { a4  }
  >>
  d16-\tutti  a'  a  a  a
  a16 | % 304
  bes8  g  e | % 305
  c16  g'  g  g  g
  g16 | % 306
  a8  f  d | % 307
  bes16  f'  f  f
  f16  f | % 308
  g8  e  cis | % 309
  a4 r8
  d16 (  e  f4 ) | % 311
  e8  d  a' | % 312
  a,16 (  bes  c4 ) | % 313
  bes8  a  a' | % 314
  d,16 (  e  f4 ) | % 315
  e8  d  a' | % 316
  a,16 (  bes  c4 ) | % 317
  bes8  a  c | % 318
  bes8  a  c | % 319
  bes8  a  g'
  f16  e  d8  cis | % 321
  d4 r8 | % 322
  a16 (  bes  c4 ) | % 323
  bes8  a  c | % 324
  bes8  a  c | % 325
  bes8  a  g' | % 326
  f16  e  d8  cis | % 327
  d4. \fermata \bar "|."
}