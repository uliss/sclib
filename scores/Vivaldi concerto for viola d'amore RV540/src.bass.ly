\version "2.18.0"

% based on mutopia edition
% http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=310

\tag-quote "vda1" { \vdaPartOne }
\tag-quote "vda3" { \vdaPartThree }

\tag-quote "lute1" { \lutePartOne }
\tag-quote "lute3" { \lutePartThree }

IBasso = \relative c {
  \clef "bass"
  \key f \major
  \time 2/4
  \set Timing.beamExceptions = #'(
                                   (end . (
                                            ((1 . 8) . (4))
                                            ((1 . 16) . (4 4))
                                            )))

  \set Score.skipBars = ##t

  \partial 8 r8 |

  r8 f e d |
  % 2
  r8 a' f d |
  % 3
  r8 cis b a |
  % 4
  r8 f' e d |
  % 5
  r8 cis b a |
  % 6
  r8 g bes g |
  % 7
  a a' g f |
  % 8
  r8 a g f |
  % 9
  r8 e d c |
  % 10
  r8 e d c |
  % 11
  r8 f a f |
  % 12
  f8. f16 f8. f16 |
  % 13
  f8. f16 f8. f16 |
  % 14
  bes d c bes a g f e |
  % 15
  f8 a, bes c |
  % 16
  f, a' g f |
  % 17
  r8 d'16 c d8 d, |
  % 18
  r8 d' g, d |
  % 19
  g, bes' a g |
  % 20
  r8 c16 bes c8 c, |
  % 21
  r8 c' f, c |
  % 22
  f, a'16 g f8 bes, |
  % 23
  a4 r8 a8 |
  % 24
  bes4 r8 g'8 |
  % 25
  f4 r8 gis,8 |
  % 26
  a cis' d a |
  % 27
  f e d a |
  % 28
  d cis' d a |
  % 29
  f e d a |
  % 30
  d4 r |
  % 31
  R2*20
  \quote-with-clef "lute1" "Liuto" "treble" {
   R2 * 2 
  }

  % 53
  f,8 f' d bes |
  % 54
  r8 f' a, bes |
  % 55
  r8 e d c |
  % 56
  r8 a' g f |
  % 57
  r8 d'16 c d8 d, |
  % 58
  r8 d' g, d |
  % 59
  r8 g16 fis g8 g, |
  % 60
  r8 c'16 bes c8 c, |
  % 61
  r8 c' f, c |
  % 62
  r8 a' g f |
  % 63
  c4 r8 c8 |
  % 64
  bes4 r8 bes8 |
  % 65
  a e'' f c |
  % 66
  a g f c |
  % 67
  f e' f c |
  % 68
  a g f c |
  % 69
  f,4 r |
  % 70
  R2*22 |
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
   R2 * 2 
  }
  % 94
  a8 cis e a |
  % 95
  d, f e d |
  % 96
  r8 a' f d |
  % 97
  r8 cis b a |
  % 98
  r8 f' e d |
  % 99
  a4 r8 a8 |
  % 100
  bes4 r8 g'8 |
  % 101
  f4 r8 gis,8 |
  % 102
  a cis' d a |
  % 103
  f e d a |
  % 104
  d cis' d a |
  % 105
  f e d a |
  % 106
  d4 r |
  % 107
  R2 * 43 |
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R2 * 3
  }
  % 153
  r8 f8 e d |
  % 154
  r8 a' f d |
  % 155
  r8 cis b a |
  % 156
  r8 f' e d |
  % 157
  r8 cis b a |
  % 158
  r8 g bes g |
  % 159
  a a' g f |
  % 160
  r8 a g f |
  % 161
  r8 e d c |
  % 162
  r8 e d c |
  % 163
  r8 f a f |
  % 164
  f8. f16 f8. f16 |
  % 165
  f8. f16 f8. f16 |
  % 166
  bes d c bes a g f e |
  % 167
  f8 a, bes c |
  % 168
  f, a' g f |
  % 169
  r8 d'16 c d8 d, |
  % 170
  r8 d' g, d |
  % 171
  g, bes' a g |
  % 172
  r8 c16 bes c8 c, |
  % 173
  r8 c' f, c |
  % 174
  f, a'16 g f8 bes, |
  % 175
  a4 r8 a8 |
  % 176
  bes4 r8 g'8 |
  % 177
  f4 r8 gis,8 |
  % 178
  a cis' d a |
  % 179
  f e d a |
  % 180
  d cis' d a |
  % 181
  f e d a |
  % 182
  d4^\fermata r \bar "|."
}

IFigures = \context FiguredBass \figuremode {
  \partial 8 <_>8 |
  %1
  <_>2*6 |
  %7
  <_>4. <6>8 |
  <_>2*9 |
  %17
  <_>8 <5 4> <3+> <_> |
  <_>2*2
  %20
  <_>8 <5 4> <3> <_> | <_>2*2
  %23
  <_+>2 | <_>4. <6 4+>8 |
  <_>2 | <_>8 <6 5>4. | <_>2 | <_>8 <6 5>4. |
  %29
  <_>2*28 |
  %57
  <_>8 <5 4> <3+> <_> | <_>2*7 |
  %65
  <_>8 <6 5> <_> <_> | <_>2*33
  %99
  <_+>2 | <_>4. <6 4+>8 | <_>2 | <_>8 <6 5> <_> <_> |
  %103
  <_>2*56 |
  %159
  <_>4. <6>8 | <_>2*9 |
  %169
  <_>8 <5 4> <3+> <_> | <_>2*2 |
  <_>8 <5 4> <3> <_> | <_>2*2 |
  %175
  <_+>2 | <_>4. <6 4+>8 |
  <_>2 | <_>8 <6 5> <_> <_> |
  %179
  <_>2*4
}

IIIBasso = \relative c' {
  \clef "bass"
  \key f \major
  \time 3/8
  \set Score.skipBars = ##t

  d8 d, a' |
  % 197
  d d, a' |
  % 198
  d16 a f e d8 |
  % 199
  a' a, a' |
  % 200
  d d, d' |
  % 201
  a a, cis' |
  % 202
  d a, d' |
  % 203
  a a, a' |
  % 204
  d a, d' |
  % 205
  a a, a |
  % 206
  fis' fis g |
  % 207
  e e f |
  % 208
  d d e |
  % 209
  cis cis d |
  % 210
  f16 d g4 |
  % 211
  f16 d g4 |
  % 212
  f16 d a'8 a, |
  % 213
  f'16 d g4 |
  % 214
  f16 d g4 |
  % 215
  f16 d a'8 a, |
  % 216
  f'4 r8 |
  % 217
  d4 r8 |
  % 218
  d4 r8 |
  % 219
  d4 r8 |
  % 220
  R4.*9 |
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
   R4. * 2 
  }
  % 231
  f8 f, c' |
  % 232
  f f, c' |
  % 233
  f f, f' |
  % 234
  c' c, c' |
  % 235
  f, a, bes |
  % 236
  e g, a |
  % 237
  d f, g |
  % 238
  c e, f |
  % 239
  a'16 f bes4 |
  % 240
  a16 f bes4 |
  % 241
  a16 f c'8 c, |
  % 242
  f,16 f' bes4 |
  % 243
  a16 f bes4 |
  % 244
  a16 f c'8 c, |
  % 245
  f,4 r8 |
  % 246
  R4.*18
  \quote-with-clef "lute3" "Liuto" "treble" {
   R4. * 2 
  }
  % 266
  g8 bes g |
  % 267
  a' a, a' |
  % 268
  d d, d' |
  % 269
  a a, cis' |
  % 270
  d a, d' |
  % 271
  a a, a' |
  % 272
  d a, d' |
  % 273
  a a, a |
  % 274
  f'16 d g4 |
  % 275
  f16 d g4 |
  % 276
  f16 d a'8 a, |
  % 277
  f'16 d g4 |
  % 278
  f16 d g4 |
  % 279
  f16 d a'8 a, |
  % 280
  d4 r8 |
  % 281
  d4 r8 |
  % 282
  d4 r8 |
  % 283
  d4 r8 |
  % 284
  d8 d r16 d |
  % 285
  e8 cis r16 cis |
  % 286
  d8 gis, r16 ges |
  % 287
  a8 cis a |
  % 288
  d f g |
  % 289
  a d, d |
  % 290
  g g r16 g |
  % 291
  c,8 c r16 c |
  % 292
  f8 f r16 f |
  % 293
  bes,8 bes r16 bes |
  % 294
  g8 g r16 g |
  % 295
  R4.*9
  % 304
  d'8 d r16 d |
  % 305
  a8 a r16 a |
  % 306
  d8 d r16 d |
  % 307
  a8 a r16 a |
  % 308
  d4 r8 |
  % 309
  R4. |
  % 310
  d8 d d |
  % 311
  d a' a, |
  % 312
  d d r16 d |
  % 313
  a8 a r16 a |
  % 314
  d8 d r16 d |
  % 315
  a8 a r16 a |
  % 316
  d4 r8 |
  % 317
  d4 r8 |
  % 318
  d4 r8 |
  % 319
  d4 r8 |
  d4 r8 |
  d4 r8 |
  % 322
  f16 d g4 |
  % 323
  f16 d g4 |
  % 324
  f16 d a'8 a, |
  % 325
  f'16 d g4 |
  % 326
  f16 d g4 |
  % 327
  f16 d a'8 a, |
  % 328
  f'16 d a'8 a, |
  % 329
  d,4.^\fermata \bar "|."
}

IIIFigures = \figuremode {
  %196
  <_>4.*3 |
  %199
  <_+>4. | <_> | <6 4>8 <3+ 5> <_> | <_>4.*3 |
  %205
  <_+>4. | <_>4.*4 |
  %210
  <_>8 <3> <6 4+> | <_>8 <3> <6 4+> | <_> <_+> <_> |
  <_>8 <3> <6 4+> | <_>8 <3> <6 4+> | <_> <_+> <_> |
  %216
  <_>4.*23 |
  %239
  <_>8 <3> <4 6> | <_> <_> <6 4> | <_>4. | <_>8 <_> <6 4> | <_> <_> <6 4> |
  %244
  <_>4.*23
  %267
  <_+>4. | <_> | <6 4>8 <5 3+> <_> | <_>4. | <7> |
  %272
  <_>4.*50
  %322
  <_>8 <3> <6 4+> | <_> <_> <6 4+> | <_> <_+> <_> |
  <_> <_> <6 4+> | <_> <_> <6 4+> |
  %327
  <_>4.*3
}

