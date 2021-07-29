\version "2.18.2"

#(cond ((not (defined? 'vdaPartOne))
        (define vdaPartOne #{ s1 #} )))
\tag-quote "vda1" \vdaPartOne

violaPartOne = \relative a' {
  \key f \major \time 4/4 \partial 8  f8-\tutti  | % 1
  f8  g  a  g  f4 r8
  f8  | % 2
  f8  g  a  g
  f4 r8  f | % 3
  f8  g  a  bes  e,
  e8  a  g | % 4
  f8   g  a  g  f4
  r8  f | % 5
  f8  g  a  g  f4 r8
  f8 | % 6
  f8  g  a  bes  e,4
  r8  e  | % 7
  a8  a  a  a  d,4.
  bes'8 | % 8
  g8  g  g  g  c,4.
  e8  | % 9
  d4  d  cis  cis |
  \barNumberCheck #10
  d4   d  cis  cis | % 11
  d8   a'  bes  e,
  f4 r8  cis  | % 12
  d4  d  cis  cis | % 13
  d4  d  cis  cis | % 14
  d8   a'  bes  e,
  f4 r | % 15
  R1*14 | % 29
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    r2
  }
  c8-\tutti   d  e  d |
  \barNumberCheck #30
  c4 r8  c  c  d  e
  d8 | % 31
  c4 r8  c  c4  f | % 32
  b,4  b  e8  e  e
  e8 | % 33
  a,4  a  d8   d  d
  d8 | % 34
  g,4  g8  gis   a4  a | % 35
  gis4  gis  a   a | % 36
  gis4  gis  a8   c  d
  b8 | % 37
  c4  gis  a   a | % 38
  gis4  gis  a   a | % 39
  gis4  gis  a8   c  d
  b8 | \barNumberCheck #40
  c4 r r2 | % 41
  R1*13 | % 55
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1
  }
  e8-\tutti   f  g  f  e4
  r8  e | % 56
  e8  f  g  f  e4 r8
  e8 | % 57
  e4  a  d,4.  g8 | % 58
  g2 ~  g8  f  g  e | % 59
  \tieUp
  c2 ~  c8  bes  c  a |
  \tieNeutral
  \barNumberCheck #60
  a2  f' ~ | % 61
  f4.  d8  c2 ~ | % 62
  c8  c  d  g  a
  bes8   c  a | % 63
  g4  c, ~  c  c ~ | % 64
  c8  c  d  g  a4 r
  | % 65
  R1*6 | % 71
  \time 2/4  | % 71
  R2 | % 72
  \time 4/4  | % 72
  R1*4 | % 77
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1
  }
  a8-\tutti   bes  c  bes
  a4 r8  a | % 78
  a8  bes  c  bes  a4
  r8  a | % 79
  a4  d,  e r | \barNumberCheck #80
  a8   bes  c  bes
  a4 r8  a | % 81
  a8  bes  c  bes  a4
  r8  d,  | % 82
  cis8  d  e  d  cis4
  r8  cis | % 83
  cis8  d   e   d 
  cis4 r8  cis' | % 84
  a4  a  d,  d8  bes'
  | % 85
  g4  g  c,  c8  cis
   | % 86
  d4  d  cis  cis | % 87
  d4   d  cis  cis | % 88
  R1*9 | % 98
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1
  }
  r4 r8  a'-\tutti   a4  a | % 99
  d,4  d8  bes'  g4  g
  | \barNumberCheck #100
  c,4  c8  cis  d4  d
  | % 101
  cis4  cis  d   d | % 102
  cis4  cis  d8   a'
  bes8  a | % 103
  f8  g  a  cis, 
  d4  d | % 104
  cis4  cis  d   d | % 105
  cis4  cis  d8   a'
  bes8  a | % 106
  f1 \fermata \bar "|."
}

violaPartTwo = \relative d' {
  \key d \minor
  \time 4/4  | % 107
  d8\p   d  d  d  a
  a8  a  a | % 108
  d8  d  d  d  a
  a8  a  a | % 109
  d8  d  d  d  c
  c8  c  b 
  a8  a  e'  e  a,
  a8  a  a | % 111
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

#(cond ((not (defined? 'vdaPartThree))
        (define vdaPartThree #{ s1 #} )))
\tag-quote "vda3" \vdaPartThree

rn = #(define-scheme-function (parser location note)
        (ly:music?)
        #{
          \repeat unfold 3 { \tuplet 3/2 4 { \repeat unfold 3 { #note } } }
        #})

violaPartThree = \relative d' {
  \time 3/8  | % 121
  f8  a16  g  f8 | % 122
  a8  a  a | % 123
  bes8  b4 | % 124
  e,4. | % 125
  a8  a16  g  f8 | % 126
  a8  a  a | % 127
  bes8  b4 | % 128
  e,4. | % 129
  fis8  fis16  g  a
  fis16 
  d4 r8 | % 131
  g16  f  e  f  g
  e16 | % 132
  c4 r8 | % 133
  f16  e  d  e  f
  d16 | % 134
  bes4 r8 | % 135
  e16  d  cis  d
  e16  cis | % 136
  f16 (  g  a4 ) | % 137
  bes8  a r | % 138
  f16 (  g  a4 ) | % 139
  g8  f  f
  f16 (  g  a4 ) | % 141
  bes8  a  f | % 142
  f16 (  g  a4 ) | % 143
  g8  f  a | % 144
  g8  f  a | % 145
  g8  f  e | % 146
  a8  a  a | % 147
  f4 r8 | % 148
  f16 (  g  a4 ) | % 149
  g8  f  a 
  g8  f  a | % 151
  g8  f  e | % 152
  a8  a  a | % 153
  f4 r8 | % 154
  R4.*8 | % 162
  f8-\solo  f  f | % 163
  f8  f  f | % 164
  g8  g  g | % 165
  g8  g  g | % 166
  e8  e  e | % 167
  e8  e  e | % 168
  f8  f  f | % 169
  f8  f  f 
  d8  d  d | % 171
  d8  d  d | % 172
  bes'8  bes  bes | % 173
  bes8  bes  bes | % 174
  a4 r8 | % 175
  R4.*12 | % 188
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R4.
  }
  a16-\tutti  c  c  bes
  a8 | % 189
  c,8  c  c
  d8  d4 | % 191
  g,4. | % 192
  a'16  c  c  bes
  a8 | % 193
  c,8  c  c | % 194
  d8  d4 | % 195
  e16  f  g  f  g
  e16 | % 196
  a8  a16  bes  c  a
  | % 197
  f16  e  f  g  a
  f16 | % 198
  f8  d16  e  f  d
  | % 199
  e16  d  e  f  g
  e16
  e8  c16  d  e  c
  | % 201
  d16  c  d  e  f
  d16 | % 202
  d8  bes16  c  d
  bes16 | % 203
  c16  bes  c  e
  f16  g | % 204
  c,8  a'16  bes  c
  bes16 | % 205
  a16  c  c  bes
  a8 | % 206
  c8  c  a | % 207
  a16  bes  c4 | % 208
  bes8  a  a | % 209
  a16  c  c  bes
  a8 
  c8  c  a | % 211
  a16 (  bes  c4 ) | % 212
  bes8  a  c | % 213
  bes8  a  c | % 214
  bes8  a  g | % 215
  f8  a  g | % 216
  f4 r8 | % 217
  R4.*24 | % 242
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R4.
  }
  bes,16-\tutti   d  d  c
  bes8 | % 243
  d8  d  d | % 244
  es8  e4 | % 245
  a,4. | % 246
  bes16  d  d  c
  bes8 | % 247
  d8  d  bes' | % 248
  bes,16 (  c  d4 ) | % 249
  c8  bes  bes' 
  bes,16 (  c  d4 ) | % 251
  c8  bes  d | % 252
  c8  bes  d | % 253
  c8  bes  bes' | % 254
  d,8  d4 | % 255
  bes16  d  d  c
  bes8 | % 256
  bes16 (  c  d4 ) | % 257
  c8  bes  d | % 258
  c8  bes  d | % 259
  c8  bes  a'
  d,8  d4 | % 261
  bes4 r8 | % 262
  R4.*8 
  f'8  a16  g  f8 | % 271
  a8  a  a | % 272
  bes8  b4 | % 273
  e,4. | % 274
  f8  a16  g  f8 | % 275
  a8  a  a | % 276
  bes8  b4 | % 277
  e,4 r8 | % 278
  R4.*24 | % 303
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R4.
  }
  f8-\tutti   fis16  g  a
  fis16 | % 304
  d4 r8 | % 305
  g16  f  e  f  g
  e16 | % 306
  c4 r8 | % 307
  f8  d16  e  f  d
  | % 308
  bes4 r8 | % 309
  e16  d  cis  d
  e16  cis 
  f16 (  g  a4 ) | % 311
  bes8  a r | % 312
  f16 (  g  a4 ) | % 313
  g8  f  f | % 314
  f16 (  g  a4 ) | % 315
  bes8  a  f | % 316
  f16 (  g  a4 ) | % 317
  g8  f  a | % 318
  g8  f  a | % 319
  g8  f  e 
  a8  a  a | % 321
  f4 r8 | % 322
  f16 (  g  a4 ) | % 323
  g8  f  a | % 324
  g8  f  a | % 325
  g8  f  e | % 326
  a8  a  a | % 327
  f4. \fermata \bar "|."
}

