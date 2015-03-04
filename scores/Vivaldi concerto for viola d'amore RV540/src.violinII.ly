\version "2.18.0"

violinii-part-i = \relative c''' {
  \key f \major
  \time 2/4 
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8) . (4))
      ((1 . 16) . (4 4))
    )))

  \partial 8 a8^"con Sordina" |
  d,8 a d16. e32 f16. g32 |
  % 2
  a8 a, a' bes |
  % 3
  g a, e16. f32 g16. a32 |
  % 4
  f8 d r8 a''16(  f) |
  % 5
  e8 a r8 a16(  cis,) |
  % 6
  d8 bes' r8 g16(  bes) |
  % 7
  cis,8 a r8 a' |
  % 8
  f8.(^\trill e32  f) f8.(^\trill e32  f) |
  % 9
  g8 c, r8 bes' |
  % 10
  e,8.(^\trill d32  e) e8.(^\trill d32  e) |
  % 11
  f8 f f f |
  % 12
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 13
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 14
  r16 d c bes a g f e |
  % 15
  f8 a, bes c |
  % 16
  f4 r8 a'16 g |
  % 17
  g4(  fis8) e16 d |
  % 18
  e8 fis g a |
  % 19
  bes g r8 g16 f |
  % 20
  f4(  e8) d16 c |
  % 21
  d8 e f g |
  % 22
  a f r8 d |
  % 23
  a, d' cis a, |
  % 24
  bes bes'' g cis, |
  % 25
  d g, f gis, |
  % 26
  \tuplet-bracket-hide
  a g'' \tuplet 3/2 {f16( g  a)} cis,8 |
  % 27
  d g \tuplet 3/2 {f16( g  a)} cis,,8 |
  % 28
  d g' \tuplet 3/2 {f16( g  a)} cis,8 |
  % 29
  d g \tuplet 3/2 {f16( g  a)} cis,,8 |
  % 30
  d4 r8 d8\p |
  % 31
  f d cis a |
  % 32
  d a' g e |
  % 33
  cis a d a |
  % 34
  d e f d |
  % 35
  d' d, d d' |
  % 36
  a a, a a' |
  % 37
  d d, d g |
  % 38
  a a, d e |
  % 39
  f e f d |
  % 40
  g, a bes g |
  % 41
  g' e c e |
  % 42
  f8 r f8 r |
  % 43
  g8 r a8 r |
  % 44
  bes8 g e c |
  % 45
  f8 r f8 r |
  % 46
  g8 r a8 r |
  % 47
  bes8 r f8 r |
  % 48
  g8 r a8 r |
  % 49
  bes8 bes, a bes |
  % 50
  e f c' c, |
  % 51
  bes' bes, a bes |
  % 52
  e f c' c, |
  % 53
  f'\f c f16. g32 a16. bes32 |
  % 54
   c8[ c,]  c,[ d] |
  % 55
  bes c' g16. a32 bes16. c32 |
  % 56
  a8 f r8 a'16 g |
  % 57
  g4(  fis8) e16 d |
  % 58
  e8 fis g a |
  % 59
  bes g r8 g16 f |
  % 60
  f4(  e8) d16 c |
  % 61
  d8 e f g |
  % 62
  a f r8 f |
  % 63
  c, f' e c, |
  % 64
  bes f'' d bes, |
  % 65
  a bes'' \tuplet 3/2 {a16( bes  c)} e,8 |
  % 66
  f bes \tuplet 3/2 {a16( bes  c)} e,,8 |
  % 67
  f bes' \tuplet 3/2 {a16( bes  c)} e,8 |
  % 68
  f bes \tuplet 3/2 {a16( bes  c)} e,,8 |
  % 69
  f\p f f f |
  % 70
  f d e8 r |
  % 71
  f8 f f f |
  % 72
  f d e4 |
  % 73
  f8 f f f |
  % 74
  c' c, c d16 e |
  % 75
  f8 f f f |
  % 76
  c' c, c d16 e |
  % 77
  f8 f f f |
  % 78
  f f f f |
  % 79
  f f f f |
  % 80
  f d' bes a |
  % 81
  g c a g |
  % 82
  f b gis f |
  % 83
  e8 r e8 r |
  % 84
  a8 r a,8 a |
  % 85
  b b c c |
  % 86
  d d a a |
  % 87
  d d e e |
  % 88
  a, c d c |
  % 89
  r8 c d c |
  % 90
  a8 r a8 r |
  % 91
  a8 r a8 r |
  % 92
  a8 a' b e, |
  % 93
  a, a' b e, |
  % 94
  a'16.\f bes32 a16. g32 f16. e32 d16. cis32 |
  % 95
  d8 a d16. e32 f16. g32 |
  % 96
  a8 a, a' bes |
  % 97
  g a, e16. f32 g16. a32 |
  % 98
  f8 d r8 d' |
  % 99
  a, d' cis a, |
  % 100
  bes bes'' g cis, |
  % 101
  d g, f gis, |
  % 102
  a g'' \tuplet 3/2 {f16( g  a)} cis,8 |
  % 103
  d g \tuplet 3/2 {f16( g  a)} cis,,8 |
  % 104
  d g' \tuplet 3/2 {f16( g  a)} cis,8 |
  % 105
  d g \tuplet 3/2 {f16( g  a)} cis,,8 |
  % 106
  d4 r4 |
  % 107
  d4 r4 |
  % 108
  d4 r4 |
  % 109
  d4 r4 |
  % 110
  d8 r a'8 g |
  % 111
  f8 r a8 g |
  % 112
  f8 r a8 g |
  % 113
  f8 r a8 g |
  % 114
  f fis fis fis |
  % 115
  g g g g |
  % 116
  c,8 c c c |
  % 117
  f f f f |
  % 118
  bes,8 bes bes bes |
  % 119
  e e e e |
  % 120
  a,8 a a a |
  % 121
  d d f d |
  % 122
  r8 d f d |
  % 123
  r8 fis g e |
  % 124
  f d e cis |
  % 125
  d e f d |
  % 126
  r8 d' g, c |
  % 127
  f, bes e, a |
  % 128
  d, d bes g |
  % 129
  r8 e' c a |
  % 130
  r8 f' d bes |
  % 131
  r8 g' e c |
  % 132
  f2 |
  % 133
  f8 r fis8 fis |
  % 134
  g8 r gis8 gis |
  % 135
  a f e cis |
  % 136
  d f g e |
  % 137
  f d e cis |
  % 138
  d f g e |
  % 139
  f d e a, |
  % 140
  d4 r | d r | d r | d r | f8 r d r |
  % 145
  cis8 r a8 r |
  % 146
  d8 d f d |
  % 147
  r8 d f d |
  % 148
  r8 d a' a, |
  % 149
  d d f d |
  % 150
  r8 d f d |
  % 151
  r8 d a' a, |
  % 152
  d4 r8 a''8 |
  % 153
  d, a d16. e32 f16. g32 |
  % 154
  a8 a, a' bes |
  % 155
  g a, e16. f32 g16. a32 |
  % 156
  f8 d r8 a''16(  f) |
  % 157
  e8 a r8 a16(  cis,) |
  % 158
  d8 bes' r8 g16(  bes) |
  % 159
  cis,8 a r8 a' |
  % 160
  f8.(^\trill e32  f) f8.(^\trill e32  f) |
  % 161
  g8 c, r8 bes' |
  % 162
  e,8.(^\trill d32  e) e8.(^\trill d32  e) |
  % 163
  f8 f f f |
  % 164
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 165
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 166
  r16 d c bes a g f e |
  % 167
  f8 a, bes c |
  % 168
  f4 r8 a'16 g |
  % 169
  g4(  fis8) e16 d |
  % 170
  e8 fis g a |
  % 171
  bes g r8 g16 f |
  % 172
  f4(  e8) d16 c |
  % 173
  d8 e f g |
  % 174
  a f r8 d |
  % 175
  a, d' cis a, |
  % 176
  bes bes'' g cis, |
  % 177
  d g, f gis, |
  % 178
  a g'' \tuplet 3/2 {f16( g  a)} cis,8 |
  % 179
  d g \tuplet 3/2 {f16( g  a)} cis,,8 |
  % 180
  d g' \tuplet 3/2 {f16( g  a)} cis,8 |
  % 181
  d g \tuplet 3/2 {f16( g  a)} cis,,8 |
  % 182
  d4^\fermata r \bar "|."
}

violinii-part-iii = \relative c'' {
  \key f \major
  \time 3/8
  \set Score.skipBars = ##t

  d8 d,16 e' d cis |
  % 197
  d8 d,16 e' d cis |
  % 198
  d cis d e f8 |
  % 199
  e8 cis16 e d cis |
  % 200
  d8 a16 f' e d |
  % 201
  d8^\trill cis r |
  % 202
  f a,,16 f'' e d |
  % 203
  e8 a,,16 e'' d cis |
  % 204
  d8 a,16 f'' e d |
  % 205
  cis a e cis a8 |
  % 206
  a''16 a, a8(  bes) |
  % 207
  g'16 g, g8(  a) |
  % 208
  f'16 f, f8(  g) |
  % 209
  e'16 e, e8(  f) |
  % 210
  d'16 f, g bes a cis |
  % 211
  d f, g bes a cis |
  % 212
  d f e a a, cis |
  % 213
  d f, g bes a cis |
  % 214
  d f, g bes a cis |
  % 215
  d f e a a, cis |
  % 216
  d4 a8\p |
  % 217
  d d, a' |
  % 218
  d a cis, |
  % 219
  d f cis |
  % 220
  d cis'8. cis16 |
  % 221
  d8 f,8. d16 |
  % 222
  bes8 bes'8. g16 |
  % 223
  c8 e,8. c16 |
  % 224
  a8 a'8. f16 |
  % 225
  bes8 d,8. bes16 |
  % 226
  g8 g'8. c,16 |
  % 227
  f8 f8. f16 |
  % 228
  c8 c8. c16 |
  % 229
  f8 r16 f bes, c |
  % 230
  f8 r16 f bes, c |
  % 231
  f'8 f,16 g' f e |
  % 232
  f8 f,16 g' f e |
  % 233
  f g a bes c f, |
  % 234
  e8 c16 bes' a g |
  % 235
  a c, c8(  d) |
  % 236
  bes'16 bes, bes8(  c) |
  % 237
  a'16 a, a8(  bes) |
  % 238
  g'16 g, g8(  a) |
  % 239
  f'16 a, bes d c e |
  % 240
  f a, bes d c e |
  % 241
  f a, g c c, c' |
  % 242
  f a, bes d c e |
  % 243
  f a, bes d c e |
  % 244
  f a, g c c, e' |
  % 245
  f8 f, a |
  % 246
  g e c |
  % 247
  f4 r8 |
  % 248
  f8 f a |
  % 249
  g e c |
  % 250
  f4 r8 |
  % 251
  f8 fis4 |
  % 252
  g8 g, g |
  % 253
  fis' fis4 |
  % 254
  g8 g, g |
  % 255
  d' fis d |
  % 256
  g g, g |
  % 257
  d' fis d |
  % 258
  g bes, g |
  % 259
  c c'4 |
  % 260
  d8 d, fis |
  % 261
  g c, d |
  % 262
  g, bes g |
  % 263
  c4 c'8 |
  % 264
  d d, fis |
  % 265
  g c, d |
  % 266
  g' g,16 g' a bes |
  % 267
  e,8 a,,16 e'' d cis |
  % 268
  f8 d,16 f' e d |
  % 269
  d8^\trill cis r8 |
  % 270
  f a,,16 f'' e d |
  % 271
  e8 a,,16 e'' d cis |
  % 272
  d8 a,16 f'' e d |
  % 273
  cis a e cis a8 |
  % 274
  d'16 f, g bes a cis |
  % 275
  d f, g bes a cis |
  % 276
  d f e a a, cis |
  % 277
  d f, g bes a cis |
  % 278
  d f, g bes a cis |
  % 279
  d f e a a, cis |
  % 280
  d4 r8 |
  % 281 
  R4.*14 |
  % 295
  a,8 a r16 a |
  % 296
  d8 d r16 d |
  % 297
  a8 a r16 a |
  % 298
  d8 d r16 d |
  % 299
  d8 d r16 d |
  % 300
  d8 d r16 d |
  % 301
  a8 a r16 a |
  % 302
  d8 d r16 d |
  % 303
  a8 a r16 a |
  % 304
  d4 r8 |
  % 305
  R4.*3 |
  % 308
  d8 d d |
  % 309
  d a' a, |
  % 310
  d4 r8 |
  % 311
  R4.*5 |
  % 316
  d8 d d |
  % 317
  d d d |
  % 318
  d a' a, |
  % 319
  d d d |
  % 320
  d d d |
  % 321
  d a' a, |
  % 322
  d'16 f, g bes a cis |
  % 323
  d f, g bes a cis |
  % 324
  d f e a a, cis |
  % 325
  d f, g bes a cis |
  % 326
  d f, g bes a cis |
  % 327
  d f e a a, cis |
  % 328
  d f e a a, cis |
  % 329
  f4.^\fermata \bar "|."
}


