\version "2.18.2"

% based on mutopia edition
% http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=310

#(cond ((not (defined? 'lutePartOne))
        (define lutePartOne #{ s2 #} )))

#(cond ((not (defined? 'lutePartThree))
        (define lutePartThree #{ s8 #} )))

#(cond ((not (defined? 'violini-part-i))
        (define violini-part-i #{ s8 #} )))

#(cond ((not (defined? 'violini-part-iii))
        (define violini-part-iii #{ s8 #} )))

\tag-quote "lute1" { \lutePartOne }

\tag-quote "lute3" { \lutePartThree }

\tag-quote "vln1" { \violini-part-i }

\tag-quote "vln1-3" { \violini-part-iii }

subdiv = {
  \set Score.subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
}

nodiv = {
  \set Score.subdivideBeams = ##f
}

vdaPartOne = \relative c {
  \key d \minor
  \set Timing.beamExceptions = #'(
                                   (end . (
                                            ((1 . 8) . (4))
                                            ((1 . 16) . (4 4))
                                            )))
  \set Score.skipBars = ##t
  \set tupletSpannerDuration = #(ly:make-moment 1 8)


  \partial 8 r8 | R2*25 |

  \quote-mus "vln1" "Violini I"
  {
    R2 * 4
  }


  r4 r8 <<d''8 \\ a >> |
  % 31
  <<
    {
      d8 e16 f e8 f16 g | f8 e e e |
      e f16 g \appoggiatura g8
      f e | f d d f
    } \\
    {a,4 a | a a8 a | a4 a | a a8 d}
  >>
  % 35
  <f d >a a g16 f |
  % 36
  <e cis >8g g^\trill f16 e |
  % 37
  <f d >8a a g16 f |
  % 38
  <f a, >8<e a, > r4 |
  % 39
  R2*4 |

  \quote-mus "lute1" "Liuto" {
    R2 * 2
  }
  % 45
  \times 2/3 {
    \subdiv
    \tuplet-bracket-hide
    f16 a g f g a a, a' g f g a |
    % 46
    bes, a' g f g a c, a' g f g a
  } |
  % 47
  d,4 r |
  % 48
  R2 |
  %49
  \subdiv
  \times 2/3 {d16 bes c d d e f f g a a bes} |
  % 50
  \nodiv
  c8 f,16 g g4\startTrillSpan |
  % 51
  f4\stopTrillSpan r4 |
  % 52
  R2*13 |
  \quote-mus "vln1" "Violini I" {
    R2 * 4
  }

  % 69
  <<
    {
      f,8 a16 bes
      \acciaccatura{a[ bes]}
      c8 bes
    } \\ {s f f f}
  >>
  % 70
  <a f >16c d, c' e, d' c bes |
  % 71
  <<
    {
      a8 a16 bes \acciaccatura{a[ bes]}
      c8 bes
    } \\ {f f f f}
  >>
  % 72
  <a f >16c d, c' e, d' c bes |
  % 73
  <a f >8f'16 g \acciaccatura{f[ g]} a8 f |
  % 74
  e16 g c, g' bes, d c bes |
  % 75
  <a f >8f'16 g \acciaccatura{f[ g]} a8 f |
  % 76
  e16 g c, g' bes, d c bes |
  % 77
  <<
    {
      a8 a \times 2/3 {
        \subdiv
        a16 bes c c bes a
        \nodiv
      }
    } \\ {f8 f f f}
  >>
  % 78
  <<
    {
      \acciaccatura{bes16[ c]}
      d8 c \times 2/3 {
        \subdiv
        a16 bes c c bes a
        \nodiv
      }
    } \\ {f8 f f f}
  >>
  % 79
  <<
    {
      \acciaccatura{bes16[ c]}
      d8 c \acciaccatura{bes16[ c]}
      d8 c
    } \\ {f,8 f f f}
  >>
  % 80
  R2*6

  \quote-mus "lute1" "Liuto" {
    \tuplet-bracket-hide
    R2 * 2
  }

  % 88
  <<{e'16 e e f f8( e16) f} \\ {a,16 a a a a8 ~ a16 a}>>
  % 89
  <<{e'16 e e f f8(  e16) f} \\ {a,16 a a a a8 ~ a16 a}>>
  % 90
  \subdiv
  \times 2/3 {
    <e' a, > c d e fis gis

  } a8 r |
  % 91
  \times 2/3 {
    \once \tuplet-bracket-show
    r16 c, d
    e fis gis
  } a8 r |
  \nodiv
  % 92
  r16 a c, a' d, a' e gis |
  % 93
  a4 r |
  % 94
  R2*8 |

  \quote-mus "vln1" "Violini I" {
    R2 * 4
  }

  % 106
  <d, a a, f' d >8d16 e f d a' cis, |
  % 107
  <d a a, f' d >8d16 e f d a' cis, |
  % 108
  d4 r |
  % 109
  R2 |
  % 110
  r16 a'16 e a cis, a' b, a' |
  % 111
  a, a' e a cis, a' b, a' |
  % 112
  a,4 r | R2 |
  %114
  \subdiv
  \times 2/3 {
    \once \tuplet-bracket-show
    r16 a' bes c bes a d a bes c bes a
  } |
  % 115
  <bes g >8<bes g ><bes g ><bes g >|
  % 116
  \times 2/3 {
    \once \tuplet-bracket-show
    r16 g a bes a g c g a bes a g
  } |
  % 117
  <a f >8<a f ><a f ><a f >|
  % 118
  \times 2/3 {
    \once \tuplet-bracket-show
    r16 f g a g f bes f g a g f
  } |
  % 119
  <g e >8<g e ><g e ><g e >|
  % 120
  \times 2/3 {
    \once \tuplet-bracket-show
    r16 e f g f e a e f g f e
  } |
  % 121
  f4 r |
  % 122
  \times 2/3 {
    \once \tuplet-bracket-show
    r16 d e f e d a' d, e f e d
  } |
  \nodiv
  % 123
  a'8 a16 c, bes8 g'16 bes, |
  % 124
  a8 f'16 a, g8 e'16 g, |
  % 125
  f4 r |
  % 126
  r16 a'16 fis8 g16 bes e,8 |
  % 127
  f16 a d,8 e16 g cis,8 |
  % 128
  d4 r |
  \partpagebreak
  % 129
  %R2*3 |
  \quote-mus "lute1" "Liuto" {
    R2 * 3
  }
  % 132
  r16 <<{c16 bes8^\trill a16 c bes8^\trill} \\ {f16 f8 f16 f f8}>> |
  % 133
  <a f >16bes32 c d e f g a16 d, c8^\trill |
  % 134
  b16 c32 d e f gis a b16 e, d8 |
  % 135
  <cis a >4 r |
  % 136
  r16 a'16 bes a g g a g |
  % 137
  f f g f e e f e |
  % 138
  d a' bes a g g a g |
  % 139
  f f g f e e f e |
  % 140
  <d a d, f >8e16 f e8 d |
  % 141
  R2 |
  % 142
  <f a, d, f >8g16 a g8 f |
  % 143
  R2 |
  % 144
  \subdiv
  \times 2/3 {a16 f g a g f} a,8 r8 |
  % 145
  \times 2/3 {g'16 e f g f e} a,8 r8 |
  \nodiv
  % 146
  f'16 f g f f f g f |
  % 147
  f f g f f f g f |
  % 148
  <<{f a g f e4\startTrillSpan} \\ {a,16 a a a a4}>> |
  % 149
  \subdiv
  \times 2/3 {d16\stopTrillSpan f g a g f f g a a g f} |
  % 150
  \times 2/3 {f g a a g f f g a a g f} |
  % 151
  <<{f a g f e4\startTrillSpan} \\ {a,16 a a a a4}>> |
  % 152
  \nodiv
  <d a d, f >4\stopTrillSpan r4 |
  % 153
  R2*29 |
  % 182
  R2^\fermataMarkup
}

vdaPartTwo = \relative c'' {
  \key d \minor
  \time 4/4
  \set Timing.beamExceptions = #'(
                                   (end . (
                                            ((1 . 8) . (2 2 2 2))
                                            )))
  % end beams on quarters by default

  \repeat "volta" 2 {
    \partial 8 c8 |
    f16 g a4 f8 g16 e c8^\trill r c8 |
    % 184
    e ~ e32 f g a bes8 g a16. g32 f8 r16 f \appoggiatura f8 g16. a32 |
    % 185
    g8 c g e f bes f d |
    % 186
    e16 d c8 r16 g' \appoggiatura g8 a16. bes32 cis,8 ~ cis16 g' a g a e |
    % 187
    f16 e d8 r16 <<
      {
        a16 \appoggiatura a8
        bes16. c32 bes8^\trill a
      } \\ {f16 f f f8 f}
    >> r16
    <<{a16 \appoggiatura a8 bes16. c32} \\ {f,16 f f}>> |
    <<{bes8^\trill a} \\ {f8 f}>> r16 a'( f  d) cis16. d32 a16. g'32 f4\startTrillSpan |
    e16\stopTrillSpan cis a g' e4\startTrillSpan d\stopTrillSpan
  }

  \repeat "volta" 2 {
    r16 a' a16. g32 |
    % 190
    fis16. fis32 g16. a32 d,16. ees32 c16. d32 bes16 a g8 r16 g' g16. f32 |
    % 191
    e16. e32 f16. g32 c,16. d32 bes16. c32 a16 g f8 r8 c' |
    % 192
    f16 g a4 f8 e16 f g8 r16 c, e g |
    % 193
    f g a4 f8 e16 f g4 c,8 |
    % 194
    <<{a16. bes32 c8~ c16. g'32 c,16. bes32 a16. bes32 c8 ~ c16. g'32 c,16. bes32} \\ {f8 f g r f f g r}>> |
    % 195
    a16. c32 f16. g32 g8. f16 f2^\fermata
  }

}

vdaPartThree = \relative c'' {
  \key f \major
  \time 3/8
  \set Timing.beamExceptions = #'(
                                   (end . (
                                            ((1 . 16) . (6))
                                            ((1 . 32) . (4 4 4))
                                            )))
  \set Score.skipBars = ##t

  R4.*17 |

  \quote-mus "vln1-3" "Violini I" {
    R4. * 3
  }

  d32 e f g a16 d, e cis |
  % 217
  d4 r8 |
  % 218
  d32 e f g a16^\trill g32 f g16^\trill f32 e |
  % 219
  f4 r8 |
  % 220
  a32 a a a a a a a a g f e |
  % 221
  d16 d d d d e32 f |
  % 222
  g g g g g g g g g f e d |
  % 223
  c16 c c c c d32 e |
  % 224
  f f f f f f f f f e d c |
  % 225
  bes16 bes bes bes bes c32 d |
  % 226
  e e e e e e e e e g f e |
  % 227
  f f f f f f f f f a g f |
  % 228
  e16 e32 f g16 e32 f g16 e32 f |
  % 229
  g16 bes a f g e |
  % 230
  f bes a f g e |
  % 231
  f8
  r r |
  % 232 |

  R4.*7
  \partpagebreak


  \quote-mus "vln1-3" "Violini I" {
    R4. * 6
  }

  % 245
  f16 c32 bes a16 a'32 g f16 a, |
  % 246
  bes d32 c bes16 g'32 f e16 bes |
  % 247
  a f a c f c |
  % 248
  f,4 r8 |
  % 249
  \quote-mus "lute3" "Liuto" {
    R4.*2 |
  }
  % 251
  a16 c32 bes a16 ees'32 d c16 bes32 a |
  % 252
  bes16 g bes d g8 |
  % 253
  R4. |
  % 254
  <g, d >16.<g d >32<g d >16.<g d >32<a d, >16.<g d >32|
  % 255
  <fis d >16.<fis d >32<fis d >16.<fis d >32<g d >16.<a d, >32|
  % 256
  <bes d, >8[ <a d, >] r8 |
  % 257
  R4. |
  % 258
  bes16 d g32 f ees d g f ees d |
  % 259
  ees16 c ees g ees c |
  % 260
  fis a32 g fis16 e32 d c16 bes32 a |
  % 261
  bes16 d g bes, a fis' |
  % 262
  g4 r8 |
  % 263
  R4.*11 |
  \quote-mus "vln1-3" "Violini I" {
    R4. * 6
  }
  % 280
  d32( cis d  e) d( cis d  e) f( e f  g) |
  % 281
  a16 f d a f d |
  % 282
  f'32( e f  g) f( e f  g) f( e f  g) |
  % 283
  a4 r8 |
  % 284
  f32 e f g f e f g f16^\trill r |
  % 285
  e32 d e f e d e f e16^\trill r |
  % 286
  d32 cis d e d cis d e d cis d e |
  % 287
  <cis a >16a' a <cis, a ><cis a ><d a >|
  % 288
  <d a >a' a <d, a ><d a ><cis a >|
  % 289
  <cis a >8 r8 r |
  % 290
  r32 d32 d d g d d d bes' d, d d |
  % 291
  e16 c e c g' c, |
  % 292
  r32 c c c f c c c a' c, c c |
  % 293
  d16 bes d bes g' bes, |
  % 294
  r32 bes bes bes e bes bes bes g' e e e |
  % 295
  cis a a a cis a a a g' e e e |
  % 296
  f a a a f d d d a f' f f |
  % 297
  e a a a e cis cis cis a e' e e |
  % 298
  f16 d32 e f16 f32 g a16 r |
  % 299
  R4. |
  % 300
  <f, a d f>4._\markup{\italic "Arpeggio"} |
  <a cis e> | <f a d f> | <a cis e> |
  %{
  f,16 a d f d a |
  % 301
  a cis e cis a8 |
  % 302
  f16 a d f d a |
  % 303
  a cis e cis a8 |
  %}
  % 304
  R4.*4 |
  %308
  d32 cis d e f e f g a8 |
  % 309
  <<{f16 g e8.^\trill d16} \\ {a8 a4}>> |
  % 310
  <d a d, f>4 r8 |
  % 311
  R4.
  % 312
  f32 d f a f d f a f d f a |
  % 313
  cis, a cis e cis a cis e cis a cis e |
  % 314
  f d f a f d f a f d f a |
  % 315
  cis, a cis e cis a cis e cis a cis e |
  % 316
  f( e  f) g f( e  f) g f( e  f) g |
  % 317
  a16. bes32 a16. bes32 a16. bes32 |
  % 318
  a16 g32 f e8.\startTrillSpan d16\stopTrillSpan |
  % 319
  d32( cis  d) e d( cis  d) e d( cis  d) e |
  % 320
  f16. g32 f16. g32 f16. g32 |
  % 321
  f16 e32 d cis8.\startTrillSpan d16\stopTrillSpan |
  % 322
  d4 r8 |
  % 323
  \quote-mus "vln1-3" "Violini I" {
    R4.*6 |
    R4.^\fermataMarkup
  }
  % 329
  \bar "|."

}