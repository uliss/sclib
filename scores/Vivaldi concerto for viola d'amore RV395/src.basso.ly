\version "2.18.2"

celloPartOneExp = {
  d8 d' d,16 d' cis d d,4 r8 d |
  a a' a,16 a' g a a,4 r8  a' |
  d,8 d' d,16 d' cis d d,4 r8 d |
  a a' a,16 a' g a a,4 a |
  a a a a | a a a a |
  a8 a' f d a d a d a a' a, a' d, d a' a, |
  d a' f d a d a d a a' a, a' d, d a' a, |
}

#(cond ((not (defined? 'vdaPartOne))
        (define vdaPartOne #{ s1 #} )))
\tag-quote "vda1" \vdaPartOne

celloPartOne = \relative c {
  \clef "bass" \key f \major \time 4/4 \partial 8  d8-\tutti  | % 1
  d8  e  f  e  d4 r8
  d8  | % 2
  d8  e  f   e
  d4  r8  d  | % 3
  d8  e  f  g  a
  g8  f  e | % 4
  d8  e  f  e  d4 r8
  d8 | % 5
  d8  e  f  e  d4 r8
  d8  | % 6
  d8  e  f  g  a
  g8  f  e | % 7
  d8  d  c  c  bes
  a8  bes  g | % 8
  c8  c  bes  bes  a4
  a4 | % 9
  a4  a  a  a | \barNumberCheck
  #10
  a4  a  a  a | % 11
  d8   d  g,  a  d
  cis8  b  a  | % 12
  a4  a  a  a | % 13
  a4  a  a  a | % 14
  d8   d  g,  a  d4 r | % 15
  R1*14 | % 29
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    r2
  }
  a8-\tutti   b  c  b | \barNumberCheck
  #30
  a4 r8  a  a  b  c  b
  | % 31
  a4 r8  a  a4  d | % 32
  e8  d  cis  b  a  a
  g8  g | % 33
  f8  f'  f,  f  g
  g8  f  f | % 34
  e4  e'  e   e | % 35
  e4  e  e   e | % 36
  e4  e  a,8   a  d
  e8 | % 37
  a,8  a'   gis  e
  e4  e | % 38
  e4  e  e  e | % 39
  e4  e  a,8   a  d
  e8 | \barNumberCheck #40
  a,4-\solo r  a r | % 41
  a4 r  e'8  d  c  b | % 42
  a4 r  a r | % 43
  a4 r  e'8  fis  gis
  e8 | % 44
  a,4 r r2 | % 45
  R1*5 | % 51
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1
  }
  g8-\solo   g'  e  c  g2 ~ | % 52
  g2  c4  g | % 53
  c8  c'   e,  c  g2
  ~ | % 54
  g2  c4  g | % 55
  c8-\tutti  d  e  d  c4 r8
  c8 | % 56
  c8  d  e  d  c4 r8
  c8 | % 57
  c4  f  g8  a  b
  g8 | % 58
  b,2  c8  d  e  c | % 59
  e2  f8  g  a  f |
  \barNumberCheck #60
  f,2  bes8  c  d  c | % 61
  bes2  f'8  g  a  g | % 62
  f8  a,  bes  c  f
  g8   a  f | % 63
  d4  e  f8  g  a
  g8 | % 64
  f8  a,  bes  c  f4 r | % 65
  R1*6 | % 71
  \time 2/4 
  R2 | % 72
  \time 4/4 
  R1*4 | % 77
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1
  }
  f8-\tutti  g  a  g  f4
  r8  f | % 78
  f8  g  a  g  f4 r8
  f8 | % 79
  f4  bes,  c8  c'  a
  g8 | \barNumberCheck #80
  f8   g  a  g  f4
  r8  f | % 81
  f8  g  a  g  f4 r8
  d8 | % 82
  a8  b  cis  b  a4 r8
  a8 | % 83
  a8  b  cis  b  a4
  r8  a | % 84
  d8  d  c  c  bes  bes
  g8  g | % 85
  c8  c  bes  bes  a4  a
  | % 86
  a4  a  a  a | % 87
  a4  a  a  a | % 88
  R1*9 | % 98
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1
  }
  r4 r8  d-\tutti  d  d  c  c | % 99
  bes8  a  bes  g  c  c
  bes8  bes | \barNumberCheck #100
  a4  a  a  a | % 101
  a4  a  a   a | % 102
  a4  a  d8  d  g,
  a8 | % 103
  d8  e  f  a,   a4
  a4 | % 104
  a4  a  a  a | % 105
  a4  a  d8   d  g,
  a8 | % 106
  d,1 \fermata \bar "|."
}

celloPartTwo = \relative c {
  \clef bass
  \key d \minor
  \time 4/4  | % 107
  d8 -\p  d  d  d  a
  a8  a  a | % 108
  d8  d  d  d  a
  a8  a  a | % 109
  d8  d  d  d  c
  c8  c  b |
  a8  a  e'  e  a,  a
  a8  a | % 111
  e'8  e  gis  gis  a
  a8  d,  d | % 112
  g8  g  b,  b  c
  c8  e  e | % 113
  f8  f  f  f  f
  f8  c'  c, | % 114
  f8  f  cis  cis  d
  d8  d  d | % 115
  a8  a  a  a  d  d
  d8  d | % 116
  g8  g  g  g  g,
  g8  g  g | % 117
  a8  a  a  a  a  a
  a8  a | % 118
  a8  a  d  d  g,  g
  a8  a | % 119
  d4  f8  f  g,  g
  a8  a 
  d1 \fermata \bar "|."
}

#(cond ((not (defined? 'vdaPartTree))
        (define vdaPartTree #{ s1 #} )))
\tag-quote "vda3" { \vdaPartThree }

celloPartThree = \relative c {
  \time 3/4
  \key d \minor
  \clef bass
   \time 3/8  | % 121
  d16  d'  f,  e
  d8 | % 122
  cis8  d  f | % 123
  g8  gis4 | % 124
  a8  a16  g  f  e
  | % 125
  d16  d'  f,  e
  d8 | % 126
  cis8  d  f | % 127
  g8  gis4 | % 128
  a8  a16  g  f  e
  | % 129
  d8  d16  e  fis  d
  g16  a  bes  a
  g16  f | % 131
  e16  d  c  d  e
  c16 | % 132
  f16  g  a  g  f
  e16 | % 133
  d16  c  bes  c  d
  bes16 | % 134
  e16  f  g  f  e
  d16 | % 135
  cis16  b  a  b  cis
  a16 | % 136
  d16  d'  f,  e
  d8 | % 137
  cis8  d r | % 138
  R4.*2 
  d16  d'  f,  e
  d8 | % 141
  cis8  d r | % 142
  R4.*3 | % 145
  r8 r  cis | % 146
  d8  a'  a, | % 147
  d16  d'  f,  e
  d8 | % 148
  R4.*3 | % 151
  r8 r  cis | % 152
  d8  a'  a, | % 153
  d4 r8 | % 154
  R4.*6 | % 161
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R4.
  }
  a16  b  cis  b  cis
  a16 | % 162
  d4 r8 | % 163
  R4.*13 | % 178
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R4.*2
  }
  c16  d  e8  c | % 179
  R4.*8 | % 188
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R4.
  }
  f16-\tutti  f'  a,  g
  f8 | % 189
  e8  f  a
  bes,8  b4 | % 191
  c8  d  e | % 192
  f16  f'  a,  g
  f8 | % 193
  e8  f  a | % 194
  bes,8  b4 | % 195
  c16  d  e  d  e
  c16 | % 196
  f8  f16  g  a  f
  | % 197
  d16  c  d  e  f
  d16 | % 198
  bes8  bes16  c  d  bes | % 199
  c16  bes  c  d  e
  c16 
  a8  a16  bes  c  a | % 201
  bes16  a  bes  c  d
  bes16 | % 202
  g8  g16  a  bes  g | % 203
  e'16  d  e  c  d
  e16 | % 204
  f16  e  f  g  a
  g16 | % 205
  f16  f'  a,  g
  f8 | % 206
  e8  f r | % 207
  R4.*2 | % 209
  f16  f'  a,  g
  f8 
  e8  f r | % 211
  R4.*3 | % 214
  r8 r  bes | % 215
  c8  c,4 | % 216
  f4 r8-\solo | % 217
  R4.*3
  f8  f16  g  a  f
  | % 221
  R4.*4 | % 225
  c8  c16  d  e  c
  | % 226
  f8  a  a | % 227
  d,8  d  d | % 228
  bes'8  bes  bes | % 229
  e,8  e  e
  c'8  c  c | % 231
  f,8  f  f | % 232
  d'8  d  d | % 233
  c8  c  bes | % 234
  a8  a  a | % 235
  d8  d  c | % 236
  bes8  bes  bes | % 237
  fis8  fis  fis | % 238
  g8  g  g | % 239
  bes,8  bes  bes
  c8  c  c | % 241
  d8  d  d | % 242
  g,16-\tutti  g'  bes,  a  g8 | % 243
  fis'8  g  bes, | % 244
  c8  cis4 | % 245
  d4. | % 246
  g,16  g'  bes,  a  g8 | % 247
  fis'8  g r | % 248
  R4.*5 | % 253
  r8 r  fis | % 254
  g8  d  d, | % 255
  g16  g'  bes,  a  g8 | % 256
  R4.*3 | % 259
  r8 r  fis'
  g8  d'  d, | % 261
  g,4 r8 | % 262
  R4.*8
  d'16  d'  f,  e
  d8 | % 271
  cis8  d  f | % 272
  g8  gis4 | % 273
  a8.  g16  f  e | % 274
  d16  d'  f,  e
  d8 | % 275
  cis8  d  f | % 276
  g8  gis4 | % 277
  a4 r8 | % 278
  R4.*24 | % 303
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R4.
  }
  d,8-\tutti   d16  e  fis
  d16 | % 304
  g16  a  bes  a
  g16  f | % 305
  e16  d  c  d  e
  c16 | % 306
  f16  g  a  g  f
  e16 | % 307
  d16  c  bes  c  d
  bes16 | % 308
  e16  f  g  f  e
  d16 | % 309
  cis16  b  a  b  cis
  a16 
  d16  d'  f,  e
  d8 | % 311
  cis8  d r | % 312
  R4.*2 | % 314
  d16  d'  f,  e
  d8 | % 315
  cis8  d r | % 316
  R4.*3 | % 319
  r8 r  cis
  d8  a'  a, | % 321
  d16  d'  f,  e
  d8 | % 322
  R4.*3 | % 325
  r8 r  cis | % 326
  d8  a'  a, | % 327
  d4. \fermata \bar "|."
}
