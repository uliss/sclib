\version "2.18.2"

#(cond ((not (defined? 'vdaPartOne))
        (define vdaPartOne #{ s2 #} )))

#(cond ((not (defined? 'vdaPartThree))
        (define vdaPartThree #{ s8 #} )))

#(cond ((not (defined? 'violini-part-i))
        (define violini-part-i #{ s8 #} )))

#(cond ((not (defined? 'violini-part-iii))
        (define violini-part-iii #{ s8 #} )))

\tag-quote "vda1" { \vdaPartOne }

\tag-quote "vda3" { \vdaPartThree }

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


lutePartOne = \relative c {
  \key d \minor
  \time 2/4
  \set Timing.beamExceptions = #'(
                                   (end . (
                                            ((1 . 8) . (4))
                                            ((1 . 16) . (4 4))
                                            )))
  \set Score.skipBars = ##t
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  \partial 8 r8 |
  R2*34
  \quote-mus "vda1" "Viola d'amore" {
    R2 * 3
  }
  % 38
  r4 r16 f''16 g a |
  % 39
  a f f d d a a bes |
  % 40
  bes d d g g d d bes' |
  % 41
  bes g g e e bes bes c |
  % 42
  a f' g a a, f' g a |
  % 43
  bes, f' g a c, f g a |
  % 44
  d, g a bes c, bes a g |
  % 45
  a4 r |
  % 46
  R2 |
  \subdiv
  \times 2/3 {
    
    \tuplet-bracket-hide
    f'16 a g f g a a, a' g f g a |
    % 48
    bes, a' g f g a c, a' g f g a
  } |
  % 49
  d,4 r |
  % 50
  R2 |
  % 51
  \times 2/3 {a16 bes c d d e f f g a a bes} |
  \nodiv
  % 52
  c8 f,16 g g4\startTrillSpan |
  % 53
  f8\stopTrillSpan r r4 |
  % 54
  R2*23
  \quote-mus "vda1" "Viola d'amore" {
    R2 * 3
  }
  |
  % 80
  r16 a16 f a d, a' c, a' |
  % 81
  bes, g' e g c, g' bes, g' |
  % 82
  a, f' d f b, f' a, f' |
  % 83
  gis, f' e d gis, f' e d |
  % 84
  \times 2/3 {
    \subdiv
    c16 a' b c b a c, a' b c b a |
    % 85
    d, a' b c b a e a b c b a |
    % 86
    f a b c b a c, a' b c b a |
    % 87
    d, a' b c b a e gis a b a gis
  } |
  % 88
  a4 r |
  % 89
  R2 |
  % 90
  r4 \times 2/3 {r16 c, d e fis gis} |
  % 91
  a8 r \times 2/3 {r16 c, d e fis gis} |
  % 92
  \nodiv
  a4 r |
  % 93
  r16 a16 c, a' d, a' e gis |
  % 94
  a8 r r4 |
  % 95
  R2*11 |

  \quote-mus "vda1" "Viola d'amore" {
    R2 * 2
  }

  % 108
  <d, a f>8 d16 e f d a' cis, |
  % 109
  <d a f>8 d16 e f d a' cis, |
  % 110
  d4 r |
  % 111
  R2 |
  % 112
  r16 a'16 e a cis, a' b, a' |
  % 113
  a, a' e a cis, a' b, a' |
  % 114
  a,4 r |
  % 115
  \subdiv
  \times 2/3 {r16 d e f e d g d e f e d} |
  % 116
  <e c >8<e c ><e c ><e c >|
  % 117
  \times 2/3 {r16 c d e d c f c d e d c} |
  % 118
  <d bes >8<d bes ><d bes ><d bes >|
  % 119
  \times 2/3 {r16 b cis d cis b e b cis d cis b} |
  % 120
  <cis a >8<cis a ><cis a ><cis a >|
  % 121
  \times 2/3 {r16 d e f e d a' d, e f e d} |
  % 122
  a'4 r |
  % 123
  R2*2 |
  %125
  \times 2/3 {r16 d, e f e d a' d, e f e d} |
  \nodiv
  % 126
  a'4 r |
  % 127
  R2 |
  % 128
  r16 a32 g f16 f32 e d16 d32 c bes16 bes32 a |
  % 129
  g16 bes'32 a g16 g32 f e16 e32 d c16 c32 bes |
  % 130
  a16 c'32 bes a16 a32 g f16 f32 e d16 d32 c |
  % 131
  bes16 bes'32 a g16 g32 f e16 e32 d c16 c32 bes |
  % 132
  a4 r |
  % 133
  R2*2 |
  % 135
  r16 a'16 bes a g g a g |
  % 136
  f f g f e e f e |
  % 137
  d a' bes a g g a g |
  % 138
  f f g f e e f e |
  % 139
  d d e d cis cis d cis |
  % 140
  d4 r |
  % 141
  <d a d, f >8e16 f e8 d |
  % 142
  R2 |
  % 143
  <f a, d, f >8g16 a g8 f |
  % 144
  \subdiv
  r4 \times 2/3 {a16 f g a g f} |
  % 145
  a,8 r \times 2/3 {g'16 e f g f e} |
  \nodiv
  % 146
  a,16 a' bes a a a bes a |
  % 147
  a a bes a a a bes a |
  % 148
  a f e d a8 cis |
  % 149
  \subdiv
  \times 2/3 {
    d16 d e f e d d e f f e d |
    % 150
    d e f f e d d e f f e d
  } |
  \nodiv
  % 151
  d16 f e d a8 cis |
  % 152
  d4 r |
  % 153
  R2*29 |
  % 182
  R2^\fermataMarkup
}

lutePartTwo = \relative c'' {
  \key f \major
  \time 4/4
  \repeat "volta" 2 {
    \partial 8 r8 |
    <c f a>2_\markup{\italic "Arpeggio"} <e g bes> |
    %184
    <e g bes> <c f a> |
    %185
    <e g c> <d f bes> |
    <c e g> <cis e a> |
    %187
    <d f a> <f, d' f> |
    %188
    <f d' f> <cis' e a>4 <d f a> |
    <cis e a>2 <d f a>4
  }
  \repeat "volta" 2 {
    r4 |
    %190
    <d fis a>2 <d g bes> |
    <e g bes> <c f a> |
    %192
    <c f a> <c e g> |
    <c f a> <e g bes> |
    <c f a>4 <c e g> <c f a> <c e g> |
    <c f a> <c e g> <a c f a>2
  }
  %{
  c16 f a f c f a f e g bes
  g e g bes g |
  % 184
  e g bes g e g bes g c, f
  a f c f a f |
  % 185
  e g c g e g c g d f bes
  f d f bes f |
  % 186
  c e g e c e g e cis e a
  e cis e a e |
  % 187
  d f a f d f a f f, d' f
  d f, d' f d |
  % 188
  f, d' f d f, d' f d cis e
  a e d f a f |
  % 189
  cis e a e cis e a e <a d, f >4
  }
  \repeat "volta" 2 {
  r4 |
  % 190
  d,16 fis a fis d fis a fis d
  g bes g d g bes g |
  % 191
  e g bes g e g bes g c, f
  a f c f a f |
  % 192
  c f a f c f a f c e g
  e c e g e |
  % 193
  c f a f c f a f e g bes
  g e g bes g |
  % 194
  c, f a f c e g e c f a
  f c e g e |
  % 195
  c f a f c e g e <a f a, c >2^\fermata
  }
  %}
}



lutePartThree = \relative c'' {
  \key d \minor
  \set Timing.beamExceptions = #'(
                                   (end . (
                                            ((1 . 16) . (6))
                                            ((1 . 32) . (4 4 4))
                                            )))

  \set Score.skipBars = ##t

  R4.*20 |
  \quote-mus "vda3" "Viola d'amore" {
   R4. * 1 
  }
  d32 e f g a16 d, e cis |
  % 218
  d4 r8 |
  % 219
  d32 e f g a16^\trill g32 f g16^\trill f32 e |
  % 220
  f4 r8 |
  % 221
  d'32 d d d d d d d d c bes a |
  % 222
  g16 g g g g a32 bes |
  % 223
  c c c c c c c c c bes a g |
  % 224
  f16 f f f f g32 a |
  % 225
  bes bes bes bes bes bes bes bes bes a g f |
  % 226
  g g g g g g g g g bes a g |
  % 227
  a a a a a a a a a c bes a |
  % 228
  g16 g32 a bes16 g32 a bes16 g32 a |
  % 229
  bes16 g f a bes g |
  % 230
  a g f a bes g |
  % 231
  f8 r r |
  % 232
  R4.*13 |
  \quote-mus "vda3" "Viola d'amore" {
    R4. * 3
  }
  
  % 248
  a,16 c32 bes a16 a'32 g f16 a, |
  % 249
  bes d32 c bes16 g'32 f e16 bes |
  % 250
  a f a c f c |
  % 251
  f,4 r8 |
  % 252
  R4. |
  % 253
  a16 c32 bes a16 ees'32 d c16 bes32 a |
  % 254
  bes16 g bes d g8 |
  % 255
  R4. |
  % 256
  <g d >16.<g d >32<g d >16.<g d >32<a d, >16.<g d >32|
  % 257
  <fis d >16.<fis d >32<fis d >16.<fis d >32<g d >16.<a d, >32|
  % 258
  <bes d, >8[ <g d >] r |
  % 259
  R4.*3 |
  % 262
  bes,16 d g32 f ees d g f ees d |
  % 263
  ees16 c ees g ees c |
  % 264
  fis a32 g fis16 e32 d c16 bes32 a |
  % 265
  bes16 d g bes, a fis' |
  % 266
  g4 r8 |
  % 267
  R4.*13 |
  \quote-mus "vda3" "Viola d'amore" {
   R4. * 1 
  }
  % 281
  d32 cis d e d cis d e f e f g |
  % 282
  a16 f d a f d |
  % 283
  f'32 e f g f e f g f e f g |
  % 284
  a g a bes a g a bes a16^\trill r |
  % 285
  g32 f g a g f g a g16^\trill r |
  % 286
  f32 e f g f e f g f e f g |
  % 287
  e4 r8 |
  % 288
  R4. |
  % 289
  r32 a32 a a f d d d f a a a |
  % 290
  bes16 g bes g d g |
  % 291
  r32 g g g e c c c e g g g |
  % 292
  a16 f a f c f |
  % 293
  r32 f f f d bes bes bes d f f f |
  % 294
  g16 e g e bes e |
  % 295
  e32 cis cis cis e cis cis cis e cis cis cis |
  % 296
  d f f f d f f f d a' a a |
  % 297
  cis, e e e cis a' a a e cis cis cis |
  % 298
  d4 r8 |
  % 299
  f16 d32 e f16 f32 g a8 |
  % 300
  R4.*4 |
  % 304
  <d, f a>4._\markup{\italic "Arpeggio"} |
  <cis e a> | <d f a> | <cis e a> |
  %{
  d,16 f a f d f |
  % 305
  cis e a e cis e |
  % 306
  d f a f d f |
  % 307
  cis e a e cis e |
  %}
  % 308
  d8 r r |
  % 309
  R4. |
  %310
  d32 cis d e f e f g a8 |
  % 311
  f16 g e8.^\trill d16 |
  % 312
  d32 a d f d a d f d a d f |
  % 313
  e cis e a e cis e a e cis e a |
  % 314
  a a, d f d a d f d a d f |
  % 315
  e cis e a e cis e a e cis e cis |
  % 316
  d32 cis d e d cis d e d cis d e |
  % 317
  f16. g32 f16. g32 f16. g32 |
  % 318

  f16 e32 d cis8.\startTrillSpan a'16\stopTrillSpan  |
  % 319
  f32 e f g f e f g f e f g |
  % 317
  a16. bes32 a16. bes32 a16. bes32 |
  % 321
  a16 g32 f e8.\startTrillSpan d16\stopTrillSpan |
  % 322
  d4 r8 |
  % 323
  R4.*6 |
  % 329
  R4.^\fermataMarkup \bar "|."
}
