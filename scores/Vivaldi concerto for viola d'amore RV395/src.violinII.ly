\version "2.20.0"

\tag-quote "vda1" { \vdaPartOne }

accomp-a = {
  d8-\solo f  cis d e f d a cis e cis a b cis a
  d e f g a, b cis d |
  a d cis d a' a, cis d |
  a d a d a a cis a |
  d d cis a d d cis a |
  d d a a d d cis a |
  d d cis a d d cis a |
  d d a a
}

accomp-b = {
  c8 d e f |
  c f c f c' c, e f c f c f c' c, e  c |
  f g a f e c e c |
  f g a f e c a' f |
  bes,4 c d e f g e8 c g' e |
  f d e c d bes c a |
  bes g a f' g, e' g e |
  f f c' c, f4 r |
  f8 f c' c,
}

accomp-c = {
  a,,8-\solo  b c a e' fis gis e |
  c b c a e' fis gis e |
  c b c a e' d e cis |
  d e f d a b cis a |
  d e f d a b cis a |
  d e f d a a' f d |
  g e f d e cis d bes |
  a4 a a8 a' f d |
  a4 a a8 a' f cis |
  d fis e d g a bes g |
  c, d e c f g a g |
  f e f d a b cis a |
  e' cis d gis, a b cis a |
  e' cis d gis, a b cis d |
  g,4. a8 bes4 r8 f' |
  g,4. a8 bes4 r8  cis |
  d d g, a d e f d |
  e cis a cis d e f d |
  e4 d c bes |
  a8 b cis d g4. a8 |
  bes4 r8 cis, d f g a d, e f cis d f g a |
}

violinII-partI = \relative d'' {
  \clef "treble" \key f \major \time 4/4 \partial 8  a8-\tutti  | % 1
  f'8  f  f  f  f16 (
  g16  a )  g  f8
  a,8   | % 2
  f'8   f  f   f 
  f16 (  g  a )  g
  f8  a,  | % 3
  a'8  bes16  a  g8  f
  e8  a,  a  a  | % 4
  f'8  f  f  f  f16 (
  g16  a )  g  f8
  a,8 | % 5
  f'8  f  f  f  f16 (
  g16  a )  g  f8
  a,8  | % 6
  a'8  bes16  a  g8  f
  e4 r8  a  | % 7
  fis8  g16 (  fis )  e (
  d16 )  e  fis (  g8 )
  g,8  g  g'  | % 8
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
  d4 r8  g  | % 12
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  g' | % 13
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  a'  | % 14
  f8  e16  d  e8  cis
  d4 r | % 15
  d,8-\solo   e  f  e  d4 r8
  d8 | % 16
  d8  e  f  e  d4 r8  d
  | % 17
  g4.  gis8  a4  a,8  cis  | % 18
  d8  e  f  e  d4 r8  d
  | % 19
  d8  e  f  e  d4 r8  d
  | \barNumberCheck #20
  g4.  gis8  a  g  fis
  e8 | % 21
  d4  fis  g8  f  e  d
  | % 22
  c4  e  f8  e  d  cis
  | % 23
  d4 -!  d -!  d -!  d -! | % 24
  d4 -!  d -!  e -!  e -! | % 25
  e4 -!  e -!  e -!  e -! | % 26
  e8  fis  gis  e  a,4 -!
  a4 -! | % 27
  a4 -!  a -!  a -!  e' -! | % 28
  a,8  b  c  b  a4 -!
  a4 -! | % 29
  a4 -!  e'8  b'   c-\tutti  c
  c8  c | \barNumberCheck #30
  c16 (  d  e )  d
  c8  c  c  c  c
  c8 | % 31
  c16 (  d  e )  d
  c8  c  c  d16  c
  b8  a | % 32
  gis4 r8  e'  cis  d16 (
  cis16 )  b (  a )  b (
  cis16 ) | % 33
  d8  d,  d  d'   b
  c16 (  b )  a (  g )
  a16 (  b ) | % 34
  c8  c,  c  d'   c
  d16 (  c )  b (  a )
  gis16 (  a ) | % 35
  e8  e  e  d'   c
  d16 (  c )  b (  a )
  gis16 (  a ) | % 36
  e8  e  e  d'   c
  b16  a  b8  gis | % 37
  a4 r8  d   c  d16 (
  c16 )  b (  a )  gis (
  a16 ) | % 38
  e8  e  e  d'   c
  d16 (  c )  b (  a )
  gis16 (  a ) | % 39
  e8  e  e  d'   c
  b16  a  b8  gis |
  \barNumberCheck #40
  a4 r r2 | % 41
  R1*3 | % 44
  cis4.-\solo  bes8  a4.  g8 | % 45
  f4.  e8  d  e  f  d | % 46
  b'4.  a8  g4.  f8 | % 47
  e4.  d8  c  d  e  c | % 48
  g8 -!  a -!  b -!  c -!  g
  -!  a8 -!  b -!  c -! | % 49
  g8 -!  a -!  b -!  c -!  g
  -!  g'8 -!  e -!  c -! | \barNumberCheck #50
  f8 r  e r  d r  c r | % 51
  b4 r r2 | % 52
  R1*2 | % 54
  r2 r4 r8  d'-\tutti  | % 55
  e8  e  e  e  e16 (
  f16  g )  f  e8  c
  | % 56
  e8  e  e  e  e16 (
  f16  g )  f  e8  e
  | % 57
  e8  f16  g  f8  e
  d8.  c16  b8  g' | % 58
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
  a8  f'  g  e  f,
  g8-\solo  a  f | % 65
  bes,4 r8  bes  f'  g  a
  g8 | % 66
  f4 r8  f  c  d  e  c
  | % 67
  f4 r8  f  c  d  e  c
  | % 68
  a2  bes8  c  d  c | % 69
  bes2  c8  d  e  d |
  \barNumberCheck #70
  c2  d8  e  f  e | % 71
  \time 2/4
  d2 | % 72
  \time 4/4
  c8  d  e  d  c4 -!
  c4 -! | % 73
  c4 -!  c -!  c -!  c -! | % 74
  f4  c  f8  g  a  f
  | % 75
  c4 -!  c -!  c -!  c -! | % 76
  c4 -!  c -!  f -!  c8  c'
  | % 77
  a'8-\tutti  a  a  a  a16 (
  bes16  c )  bes  a8
  c,8 | % 78
  a'8  a  a  a  a16 (
  bes16  c )  bes  a8
  c,8 | % 79
  f8  g16  a  bes8  a
  g8  c,,  c  c'  | \barNumberCheck
  #80
  a'8  a  a  a  a16 (
  bes16  c )  bes  a8
  c,8 | % 81
  a'8  a  a  a  a16 (
  bes16  c )  bes  a8
  f8  | % 82
  e8  e  e  e  e16 (
  f16  g )  f  e8  e
  | % 83
  e8 -!  e -!  e -!  e -!
  e16 (  f  g )  f
  e8  a | % 84
  fis8  g16 (  fis )  e (
  d16 )  e (  fis )  g8
  g,8  g  g' | % 85
  e8  f16 (  e )  d (
  c16 )  d (  e )  f8
  f,8  f  g'  | % 86
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a  g'  | % 87
  f8  g16 (  f )  e (
  d16 )  cis (  d )  a8
  a8  a4 | % 88
  a,4 -!-\solo  a -!  d -!  d -! | % 89
  a4 -!  a -!  d -! r | \barNumberCheck #90
  bes4 -!  b -!  c -! r | % 91
  a4 -!  a -!  bes -! r | % 92
  g4 -!  g -!  a -! r | % 93
  a4 -! r  a -! r | % 94
  a4 -! r  a -! r | % 95
  a4 -! r  a -! r | % 96
  a4 -! r  a -! r | % 97
  a4 -! r  f'8  d  a4 | % 98
  d4 r8  a''-\tutti   fis  g16 (
  fis16 )  e (  d )  e (
  fis16 ) | % 99
  g8  g,  g  g'  e
  f16 (  e )  d (  c )
  d16 (  e ) | \barNumberCheck #100
  f8  f,  f  g'  f
  g16 (  f )  e (  d )
  cis16 (  d ) | % 101
  a8  a  a  g'   f
  (  g16 )  f  e (  d )
  cis16 (  d ) | % 102
  a8  a  a  a'   f
  e16  d  e8  cis | % 103
  d4 r8  g   f  g16 (
  f16 )  e (  d )  cis (
  d16 ) | % 104
  a8  a  a  g'
  f8  g16 (  f )  e (  d )
  cis16 (  d ) | % 105
  a8  a  a  a'   f
  e16  d  e8  cis | % 106
  d1 \fermata \bar "|."
}

violinII-partII = \relative c' {
  \key d \minor
  \time 4/4  | % 107
  d8\p   d  d  d  a
  a8  a  a | % 108
  d8  d  d  d  a  a
  a8  a | % 109
  d8  d  d  d  c  c
  c8  b
  a8  a  e'  e  a,  a
  a8  a | % 111
  e'8  e  gis  gis  a
  a8  d,  d | % 112
  g8  g  b,  b  c  c
  e8  e | % 113
  f8  f  f  f  f  f
  c'8  c, | % 114
  f8  f  cis  cis  d  d
  d8  d | % 115
  a8  a  a  a  d  d
  d8  d | % 116
  g8  g  g  g  g,  g
  g8  g | % 117
  a8  a  a  a  a  a
  a8  a | % 118
  a8  a  d  d  g,  g
  a8  a | % 119
  d4  f8  f  g,  g  a
  a8
  d1 \fermata \bar "|."
}

\tag-quote "vda3.2" { \vdaPartThree }

violinII-partIII = \relative c' {
  \key d \minor
  \time 3/8  | % 121
  d'16 (  e  f4 ) | % 122
  e8  d  a' | % 123
  g16  f  e8  d | % 124
  cis8  b  a | % 125
  d16 (  e  f4 ) | % 126
  e8  d  a' | % 127
  g16  f  e8  d | % 128
  a4 r8 | % 129
  a'16  a  a  a  a
  a16
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
  bes8  a  a'
  d,16 (  e  f4 ) | % 141
  e8  d  a' | % 142
  a,16 (  bes  c4 ) | % 143
  bes8  a  c | % 144
  bes8  a  c | % 145
  bes8  a  g' | % 146
  f16  e  d8  cis | % 147
  d4 r8 | % 148
  a16 (  bes  c4 ) | % 149
  bes8  a  c
  bes8  a  c | % 151
  bes8  a  g' | % 152
  f16  e  d8  cis | % 153
  d4 r8 | % 154
  f,16  d'  f,  e  d8 | % 155
  cis8  d  f | % 156
  g8  gis4 | % 157
  a8.  g16  f  e | % 158
  d16  d'  f,  e  d8 | % 159
  cis8  d  f
  g8  gis4 | % 161
  a,4 r8 | % 162
  d'8-\solo  d  d | % 163
  d8  d  d | % 164
  d8  d  d | % 165
  d8  d  d | % 166
  c8  c  c | % 167
  c8  c  c | % 168
  c8  c  c | % 169
  c8  c  c
  bes8  bes  bes | % 171
  bes8  bes  bes | % 172
  d8  d  d | % 173
  d8  d  d | % 174
  cis4 r8 | % 175
  R4.*13 | % 188
  f16 (-\tutti  g  a4 ) | % 189
  g8  f  c
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
  bes8  g  e
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
  f,16 (  g  a4 )
  g8  f  c' | % 211
  c,16 (  d  e4 ) | % 212
  d8  c  e | % 213
  d8  c  e | % 214
  d8  c  bes' | % 215
  a16  g  f8  e | % 216
  f8-\solo  f,16  g  a  f
  | % 217
  r8  c16  d  e  c | % 218
  r8  f16  g  a  f | % 219
  g8  c,4
  f4 r8 | % 221
  r8  f16  g  a  f | % 222
  r8  c16  d  e  c | % 223
  r8  f16  g  a  f | % 224
  r8  f16  g  a  f | % 225
  c4 r8 | % 226
  R4.*16 | % 242
  g'16 (-\tutti   a )  bes4 | % 243
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
  d16-\solo  d'  f,  e  d8 | % 263
  cis8  d  f | % 264
  g8  gis4 | % 265
  a8.  g16  f  e | % 266
  d16  d'  f,  e  d8 | % 267
  cis8  d  f | % 268
  g8  gis4 | % 269
  a,4 r8
  d'16-\solo (  e  f4 ) | % 271
  e8  d  a' | % 272
  g16  f  e8  d | % 273
  cis16  d  b  cis
  a8 | % 274
  d16 (  e  f4 ) | % 275
  e8  d  a' | % 276
  g16  f  e8  d | % 277
  a16  bes  a  g  f
  e16 | % 278
  d16  es  d  c  bes
  a16 | % 279
  bes4  g'8
  e16  f  e  d  c
  bes16 | % 281
  a4  f'8 | % 282
  d16  e  d  c  bes
  a16 | % 283
  g4  bes'8 | % 284
  a16  bes  a  g  f
  e16 | % 285
  d4 r8 | % 286
  d4 r8 | % 287
  d4 r8 | % 288
  d4 r8 | % 289
  d8  d  d
  d8  d  d | % 291
  d8  d  d | % 292
  d8  d  d | % 293
  d8  d  d | % 294
  d8  d  d | % 295
  d4 r8 | % 296
  d16  e  f8  g | % 297
  a,16  b  cis8  a | % 298
  d8  a'  a, | % 299
  d16  bes'  a  g  f
  e16
  d16  e  f8  g | % 301
  a,16  b  cis8  a | % 302
  d8  a'  a, | % 303
  d16-\tutti   a''  a  a
  a16  a | % 304
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


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
