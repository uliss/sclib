\version "2.18.0"

% based on mutopia edition
% http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=310

\tag-quote "vda1" { \vdaPartOne }
\tag-quote "vda3" { \vdaPartThree }

\tag-quote "lute1" { \lutePartOne }
\tag-quote "lute3" { \lutePartThree }

viola-part-i = \relative c'' {
  \clef "alto"
  \key f \major
  \time 2/4 
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8) . (4))
      ((1 . 16) . (4 4))
    )))
  \set Score.skipBars = ##t

  \partial 8 r8^"con Sordina" |
  r8 a g f |
  % 2
  r8 cis d f |
  % 3
  r8 e d cis |
  % 4
  r8 a' g f |
  % 5
  r8 e d cis |
  % 6
  r8 d d bes |
  % 7
  r8 a' bes a |
  % 8
  r8 c bes a |
  % 9
  r8 g f e |
  % 10
  r8 g f e |
  % 11
  r8 c' c c |
  % 12
  a8. a16 a8. a16 |
  % 13
  a8. a16 a8. a16 |
  % 14
  f d' c bes a g f e |
  % 15
  f8 a, bes c |
  % 16
  f, c'' bes a |
  % 17
  r8 a a a |
  % 18
  r8 a bes fis |
  % 19
  d d' c bes |
  % 20
  r8 g g g |
  % 21
  r8 g a e |
  % 22
  c c'16 bes a8 bes, |
  % 23
  a4 r8 a8 |
  % 24
  bes4 r8 g'8 |
  % 25
  f4 r8 gis,8 |
  % 26
  a e' f e |
  % 27
  a cis, a a |
  % 28
  f e' f e |
  % 29
  a cis, a a |
  % 30
  f4 r4
  % 31
  R2*20 |
  \quote-with-clef "lute1" "Liuto" "treble" {
   R2 * 2 
  }
  % 53
  r8 a'8 f d |
  % 54
  r8 a f f |
  % 55
  r8 g' f e |
  % 56
  r8 c bes a |
  % 57
  r8 a' a a |
  % 58
  r8 a bes fis |
  % 59
  r8 d d bes |
  % 60
  r8 g' g g |
  % 61
  r8 g a e |
  % 62
  r8 c bes a |
  % 63
  c4 r8 c8 |
  % 64
  bes4 r8 bes8 |
  % 65
  a g' a g |
  % 66
  c e, c c |
  % 67
  a g' a g |
  % 68
  c e, c c |
  % 69
  a4 r |
  % 70
  R2*22
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
   R2 * 2 
  }
  % 94
  r8 e'8 e e |
  % 95
  f a g f |
  % 96
  r8 cis d f |
  % 97
  r8 e d cis |
  % 98
  r8 a' g f |
  % 99
  a,4 r8 a8 |
  % 100
  bes4 r8 g'8 |
  % 101
  f4 r8 gis,8 |
  % 102
  a e' f e |
  % 103
  a cis, a a |
  % 104
  f e' f e |
  % 105
  a cis, a a |
  % 106
  a4 r |
  % 107
  R2*43 |
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
   R2 * 3 
  }
  % 153
  r8 a'8 g f |
  % 154
  r8 cis d f |
  % 155
  r8 e d cis |
  % 156
  r8 a' g f |
  % 157
  r8 e d cis |
  % 158
  r8 d d bes |
  % 159
  r8 a' bes a |
  % 160
  r8 c bes a |
  % 161
  r8 g f e |
  % 162
  r8 g f e |
  % 163
  r8 c' c c |
  % 164
  a8. a16 a8. a16 |
  % 165
  a8. a16 a8. a16 |
  % 166
  f d' c bes a g f e |
  % 167
  f8 a, bes c |
  % 168
  f, c'' bes a |
  % 169
  r8 a a a |
  % 170
  r8 a bes fis |
  % 171
  d d' c bes |
  % 172
  r8 g g g |
  % 173
  r8 g a e |
  % 174
  c c'16 bes a8 bes, |
  % 175
  a4 r8 a8 |
  % 176
  bes4 r8 g'8 |
  % 177
  f4 r8 gis,8 |
  % 178
  a e' f e |
  % 179
  a cis, a a |
  % 180
  f e' f e |
  % 181
  a cis, a a |
  % 182
  f4^\fermata r \bar "|."
}

viola-part-iii = \relative c'' {
  \clef "alto"
  \key f \major
  \time 3/8
  \set Score.skipBars = ##t

  a8 d, a' |
  % 197
  a d, a' |
  % 198
  a4 a8 |
  % 199
  a4 a8 |
  % 200
  a4 a8 |
  % 201
  a a a |
  % 202
  a a, a' |
  % 203
  cis a cis |
  % 204
  a a, a' |
  % 205
  a a, a |
  % 206
  d4. |
  % 207
  c4. |
  % 208
  bes4. |
  % 209
  a4. |
  % 210
  a16 d d8 e |
  % 211
  a,16 d d8 e |
  % 212
  a,16 a' cis,8 cis |
  % 213
  a16 d d8 e |
  % 214
  a,16 d e8 e |
  % 215
  a,16 a' cis,8 a' |
  % 216
  f4 r8 |
  %217
  R4.*12 |
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
   R4. * 2
  }
  %231
  c8 a e' |
  % 232
  c a e' |
  % 233
  f4 a8 |
  % 234
  g e4 |
  % 235
  c8 f4 |
  % 236
  g8 e4 |
  % 237
  f8 d4 |
  % 238
  e8 c4 |
  % 239
  c16 f d8 g |
  % 240
  c,16 f d8 g |
  % 241
  c, e g, |
  % 242
  a16 f' d8 g |
  % 243
  c,16 f d8 g |
  % 244
  c, e g, |
  % 245
  a4 r8 |
  % 246
  R4.*17 |
  \quote-with-clef "lute1" "Liuto" "treble" {
   R4. * 3 
  }
  % 266
  d4 d8 |
  % 267
  a'4 cis8 |
  % 268
  a4 a8 |
  % 269
  a4 a8 |
  % 270
  a a, a' |
  % 271
  cis a cis |
  % 272
  a a, a' |
  % 273
  a a, a |
  % 274
  a16 d d8 e |
  % 275
  a,16 d d8 e |
  % 276
  a,16 a' cis,8 cis |
  % 277
  a16 d d8 e |
  % 278
  a,16 d e8 e |
  % 279
  a,16 a' cis,8 a' |
  % 280
  d,4 r8
  % 281
  R4.*39 |
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
   R4. * 2 
  }
  % 322
  a16 d d8 e |
  % 323
  a,16 d d8 e |
  % 324
  a,16 a' cis,8 cis |
  % 325
  a16 d d8 e |
  % 326
  a,16 d e8 e |
  % 327
  a,16 a' cis,8 a' |
  % 328
  a,16 a' cis,8 a' |
  % 329
  a4.^\fermata \bar "|."
}

