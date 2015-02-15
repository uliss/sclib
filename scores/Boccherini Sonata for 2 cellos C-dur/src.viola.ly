\version "2.18.2"


violaPartOne = \relative c {
  \key c \major
  \time 4/4
  \clef alto

  \repeat volta 2 {
    <c g' e' c'>8\f c''4 \tuplet 3/2 8 {b16( c d)} c16 e c g e c g e |
    c8 e''4 \tuplet 3/2 8 {d16( e f) e( f g)} g4 r8 |
    f,16\p g, f' g, f' g, f' g, e' g, e' g, f'( e d) c |
    b g c g c g d' g, c8
    \tuplet-bracket-hide
    \tuplet 3/2 8 {c16 d e} e4 |
    <d b'>2 c'16( g) g4 f16 e
    \tuplet 3/2 8 {
      f16[ e d] b' a g
      \tuplet-hide
      d'[ c b] a g f e( d c)
    } c4 r8 |
    c'8( c c c) b b, b g' |
    a r fis,( d) g b'16. a32 b8 d, |
    c( b) fis'( g)
    \tuplet 3/2 8 {
      fis16[ d a'] g d b' a[ d, c'] b d, g
    } |
    c,8( b) fis'( g) d8.( cis16) d8 d, |
    c c''16. b32 c8 a b c fis, a |
    g e16. c32 d8 d, <g d' b'>4 a'8( b) |
    c8.( d32 c) b8 a b4 a8( b) |
    c8.( d32 c) b8 a b16 \clef treble g a b c d e fis |
    g( d) d4 dis8 e16( a,) a4 b16 c |
    \acciaccatura c8 \tuplet 3/2 8 {b16[( a b]) \acciaccatura d8 c16( b a) }
    g8 fis  \clef alto g16 d g d fis d g d |
    a' d, a' d, g d fis d   g16 d g d fis d g d
    a' d, a' d, g d fis d g8 fis16 g a b c a |
    b8 b, b b' c fis,16.( e32) fis8 d |
    g e16.( c32) d8 d, g <<{d' d} \\ {g, g}>> r
  }

  \partbreak
  << {d'2 e a4.} \\ {g,2 g d'4.} >> b'16( c) \tuplet 3/2 8 {b16( c d) } d4. |
  r8 b,( b b) c( c c c) |
  g f'16.( e32) f8 g, e' g16.( e32) c8 bes' |
  \tuplet 3/2 8 {\acciaccatura c8 bes16 a bes} e4 bes8 \acciaccatura c bes a4 a8 |
  \acciaccatura a \tuplet 3/2 8 {g16[ fis g]} e'8.[ cis16 a g] g( f) f4 \clef treble d'8 |
  ees4. fis8 g16( as) as4 g16 f |
  f( es d) c c8 c c8.( d32 c) b16 as g f |
  f es d es f8 es \clef alto d16 g, d' g, e' g, e' g, |
  f' g, f' g, e'( g,) d'( g,) e' g, e' g, f' g, f' g, |
  g' g, g' g, f'( g,) e'( g,) d'8 \tuplet 3/2 8 {b16 a g} g8 r |

  f8 f'16.[ e32] f8 d e f b, g |c f g g, c16 g' c g b g c g |
  d' g, d' g, c g b g c g c g b g c g |
  d' g, d' g, c g b g c8 c e, e |
  <f a> <f a> <f a> <g bes> <f a> <f a> <f a> <g b> |
  c a16. f32 g8 g, <c, g' e' c'>4  d'8( e) |
  f8.( g32 f) e8 d  e4 d8( e) |
  f8.( g32 f) e8 d \tuplet 3/2 8 {e16( f g)} g4 gis8 |
  a16( d,) d4 e16( f) cis( d) d4 e16( f) |
  \tuplet 3/2 8 {\acciaccatura f8 e16[ d e] \acciaccatura g8 f16 e d} c8 b c r16. c'32 b16. a32 g16. f32 |
  e8 <e c'>[ <d c'> <d b'>] <e c'> <e c'> <e c'>  r |
  \bar "|."

}

violaPartTwo = \relative c' {
  \key f \major
  \time 3/4
  \clef treble
  \clef alto
  \repeat volta 2 {
    << {a'4 a a a2. bes2 d8 bes a4 g f 
        \clef alto
        e2. ~ e4} \\ {f4 f f f2. f2 f4 f c f g,2. ~ g4} >>
    c, f' |
    bes,8 bes c c c c |
    f4 f, r |
    \clef treble
    c'' c c |
    \acciaccatura d8 c4.( a8) c4 |
    d2 \acciaccatura g8 \tuplet 3/2 4 {f8( e d) } |
    <d, c'>4( b') c |
    d16( e d e) f8 f f f |
    e16( f e f) g8 g g r |
    \clef alto
    g,4( f e) |
    << {e( d2)} \\ {g,2.} >> |
    \clef treble
    e''4 e16( d) d( c) c( d) d( e) |
    e4. f8 e4 |
    \clef alto
    f,8 f, g e' g, d' |
    << {d4( e2)} \\ {c,2.} >> |
    \clef treble
    g'''4 g16( f) f( e) e( f) f( g) |
    g4. a8 g4 |
    \clef alto
    \acciaccatura b,8 \tuplet 3/2 4 {a8 g f} <g, e'>4 <g d'> |
    c8[ r16 g] c,4 r
  }
  \partbreak
  c'8 c c c c c d d d d d d e e e e e e |
  f f f f f f r4 as8 bes c as |
  des4. es8 des c |
  b4 b b c des b( c) des b( c) g8 e c4 |
  <a' c> <a c> <a c> <g, bes'>2. |
  <a' c>4 <a c> <a c> <g, bes'>2. |
  \clef treble
  a'16( bes a bes) c8 c d16 c bes a |
  g a g a bes8 bes bes bes |
  a16( bes a bes) c8 c c f |
  \acciaccatura e d8. c16 bes4 a |
  \acciaccatura bes8 a4 g r |
  a'4 a16( g) g( f) f( g) g( a) |
  a4. bes8 a4 |
  \clef alto
  \acciaccatura c,8 \tuplet 3/2 4 {bes a g} f c e c |
  f4 c f, |
  c'' c16( bes) bes( a) a( bes) bes( c) |
  c4. d8 c4 |
  \acciaccatura e8 \tuplet 3/2 4 {d8 c bes} a4 g |
  \clef alto
  f8[ r16 c] f,4 r |
  \bar "|."
}

violaPartThree = \relative c' {
  \time 3/4
  \key c \major
  \clef treble
  \repeat volta 2 {
    c'4\f c c |
    \tuplet 3/2 4 {d8( e f) } f2 |
    \tuplet 3/2 4 {f8( g f) } e4 d |
    \appoggiatura b8 c2 
    \clef alto
    g8 f |
    f4 f16( e d e) f8 e |
    << {e4( d)} \\ {g,2} >> 
    \clef treble
    d''8 f |
    e( g) g( f) f( e) |
    e4( d) 
    e,8 d |
    d4 d16( c b c) d8 c |
    c4( b) b'8 d |
    c4 f, g |
    c8 a g f e d |
    c4 
        \clef alto
    c c c c c |
    b b b b b b'8 g |
    g4 fis8( g) a a
    << {a4 g8( a) b b} \\ {g,2 s4} >>
    \appoggiatura c'8 b4 a g |
    g fis2 |
    <cis g'>4 <cis g'> <cis g'> |
    <d fis> <d fis> <d fis> |
    <cis g'>4 <cis g'> <cis g'> |
    \appoggiatura g'8
    << fis2.\fermata \\ d >>
    
    \clef treble
    b'4 c d \tuplet 3/2 4 {e8( d c)} c2 |
    b8 e d c b a |
    \appoggiatura a8 b2 r4 |
    b4 c d \tuplet 3/2 4 {e8( d c)} c2 |
    b8 e d c b a |
    b8[ r16 g'] fis8[ r16 e] d8[ r16 c]
    b4 c d |
    <g,, b' g'>2 r4
  }
  \partbreak
  \once \set Staff.explicitClefVisibility = #end-of-line-invisible
  \clef alto
  g4 b g d' e fis g8. c,16 d4 d, |
  g g'8 f e d |
  c4 e c g' a b c8. f,16 g4 g, |
  c2 
  \clef treble
  bes'4 |
  a2 f'16( e d e) |
  f4 c bes |
  \appoggiatura bes8 a2 f'16( e d e) |
  e4 r c |
  \appoggiatura c8 b2 g'16( fis e fis) |
  g4 g, g' |
  g( as) g |
  \appoggiatura g8 fis2.
  f4( g) f |
  \appoggiatura f8 e2. |
  es4( f) es |
  \appoggiatura es8 d2. |
  es4( d) c |
  \appoggiatura c8 b2. |
  c4 r d es r f es2. d2. |
  es2. \appoggiatura es8 d2.\fermata
  \clef alto
  c,4 e c g' a b c8. f,16 g4 g, |
  c8 a' g f e d c4 c, f'8 e |
  << {e4 d d8 c b4 g e'8 d d4 c \clef treble c'} \\ {g,2 s4 s2. c,2 s4} >>
  c''4 b8 c d d c4 d e |
  \clef alto
  f,8 a g f e d |
  c4 c, g''8 f |
  f e d c a' g |
  g4 f f8 e |
  e d c b g' f |
  f4 e \clef treble e' 
  e4 d8 e f f |
  e4 f g |
  a,8 a' g f e d |
  e8[ r16 
  \clef alto
  c] b8[ r16 a] g8[ r16 f] 
  e4 f g |
  <c,, g' e' c'>2.
  \bar "|."
}

