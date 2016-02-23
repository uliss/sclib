\version "2.18.2"

#(cond ((not (defined? 'vdaPartOne))
        (define vdaPartOne #{ s1 #} )))

\tag-quote "vda1" \vdaPartOne

rI = #(define-scheme-function (parser location p1 p2)
        (ly:pitch? ly:pitch?)
        #{
          #(make-music
            'NoteEvent
            'duration
            (ly:make-duration 2 0 1)
            'pitch
            (ly:make-pitch (ly:pitch-octave p1) (ly:pitch-notename p1) (ly:pitch-alteration p1)))
          r4 r8
          #(make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 0 1)
            'pitch
            (ly:make-pitch (ly:pitch-octave p2) (ly:pitch-notename p2) (ly:pitch-alteration p2)))
        #})

violaPartOne = \relative c' {
  \time 3/4
  \rI c c
  \rI c c
  \rI c b
  \rI b gis'
  \rI gis gis
  \rI gis c,
  \rI c c
  \rI c f
  \rI f f
  \rI f b,
  \rI b d
  \rI d e
  \rI e c
  \rI c c |
  \rI c c |
  \rI c gis |
  gis4 r r
  e' e e c r r |
  R2.*5 |
  \rI c c |
  c4 r r |
  R2. * 13 |
  \rI e g, |
  \rI g g |
  \rI g dis' |
  \rI dis dis
  \rI dis fis |
  \rI fis fis |
  g4 r r |
  e a, b e r r |
  R2. * 26 |
  \rI c e |
  \rI e b |
  \rI b b |
  \rI b e |
  \rI e e
  \rI e e
  \rI d g, |
  a4 g g |
  g r r |
  R2. * 29 |
  \rI e' e |
  \rI e gis, |
  \rI gis gis
  \rI gis gis'
  e4 r r |
  R2. * 12 |
  \rI c c
  \rI c c
  \rI c gis
  gis4 r r
  e' e e |
  c2.\fermata \bar "|."



}

rF = #(define-scheme-function (parser location note)
        (ly:music?)
        #{
          \repeat unfold 4 { #note }
        #})

violaPartTwo = \relative c' {
  \rF a8
  \rF a
  \rF gis
  \rF a
  \rF g
  \rF f
  \rF e
  \rF a
  d, d e e
  \rF a
  \rF e \rF a
  \rF e \rF a
  \rF d, \rF g |
  \rF c, f f g g |
  c, c a' a
  \rF b
  \rF e, a a b b |
  e, e gis gis  \rF a |
  \rF e
  \rF a
  e e a a a a d d |
  b b e e c c c c |
  \rF d \rF e,
  a a e e a a e e a a e e a2\fermata \bar "|."
}

#(cond ((not (defined? 'vdaPartThree))
        (define vdaPartThree #{ s1 #} )))
\tag-quote "vda3" \vdaPartThree

rn = #(define-scheme-function (parser location note)
               (ly:music?)
               #{
                 \repeat unfold 3 { \tuplet 3/2 4 { \repeat unfold 3 { #note } } }
               #})

violaPartThree = \relative c' {
    \set beamExceptions = #'((end . (
                                    ((1 . 8) . (4))
                                    ((1 . 16) . (4))
                                   )))

  \repeat unfold 2 {
    c4 e gis, gis'
    b8 e, gis4 a a,8 c |
    e2 ~ e
  }
  R2
  c'16 b a g f e d c
  R2
  b'16 a g f e d c b
  R2
  a'16 g f e d c b a
  gis8 gis gis e' |
  e e e e |
  c'16 b a g f e d c |
  e8 e e e e e e e e4 r |
  R2 * 26
  \repeat unfold 2 {
    e4 g b, b' |
    d8 g, b4 c c,8 e |
    g2 ~ g
  }
  e16 d c b a g f e |
  g4 g'
  e r |
  R2 * 17 |
  g4 b dis, dis |
  fis8 b, dis4 e e8 g |
  b2 ~ b b4 r |
  g16 fis e d c b a g
  R2 |
  fis'16 e d c b a g fis |
  R2
  e'16 d c b a g fis e |
  dis'8 dis dis dis b b' b b |
  g16 fis e d c b a g |
  dis'8 dis dis dis b b' b b|
  g4 r |
  R2 * 14
  f4 a cis, cis |
  e8 a, cis4 d d8 f |
  a2 ~ a a4 r |
  f16 e d c bes a g f |
  R2 |
  f'16 e d c bes a g f |
  a'8 a a a a a a a f4 r |
  R2 * 31 |
  \repeat unfold 2 {
    c4 e gis, gis' b8 e, gis4 |
    a a,8 c
    e2 ~ e |
  }
  R2
  c'16 b a g f e d c
  R2
  b'16 a g f e d c b |
  R2 |
  a'16 g f e d c b a |
  gis8 gis gis e' |
  e e e e |
  c'16 b a g f e d c |
  e8 e e e e e e e |
  e4\fermata r4 \bar "|."

}

