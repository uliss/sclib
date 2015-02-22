\version "2.18.2"

#(cond ((not (defined? 'vdaPartOne))
        (define vdaPartOne #{ s1 #} )))
\tag-quote "vda1" \vdaPartOne

violaPartOne = \relative a' {
  \time 4/4
  a4 a, a r8 a |
  a4 a a r8 a |
  a4 a a r8 a |
  a4 r8 a8 cis4 a |
  a a cis a |
  a a cis a |
  a8 cis d a' cis a cis a |
  cis4. cis8 a4. a8 |
  a4 r8 a cis a cis a |
  cis4. cis8 a4. a8 |
  a4 r r2 |
  R1 * 6
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    \tag-parts \once \override MultiMeasureRest #'staff-position = #-6
    R1 r2
  }
  a4 a a r8 a a4 a |
  cis,4 r8 a' a f d a |
  R1 * 10

  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1 r2
  }
  c4 c |
  c4 r8 c c4 c |
  c4 r8 c c4 c |
  c4 r8 c c4 c |
  e4 c c c
  e4 c c c
  e c c8 e c' a |
  e c e c e4 e |
  c8 c d c c a' c, a' |
  e c e c e4 e |
  c8 c d c a4 r |
  R1 * 6

  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    \tag-parts \once \override MultiMeasureRest #'staff-position = #-6
    R1
    r2
  }
  e4 e |
  e r8 e e4 e |
  e4 r8 gis e a e c |
  gis'4 e e e |
  gis'4 e e e |
  e8 e e e c4 r |
  R1 * 21
  \quote-with-clef "vda1" "Viola d'amore" "treble" {
    R1
  }
  a'4 a, a r8 a |
  a4 a a r8 a |
  a4 a a r8 a |
  a4 r8 a cis4 a |
  a a cis a |
  a a cis a |
  a8 cis d a' cis a cis a |
  cis4. cis8 a4. a8 |
  a4 r8 a cis a cis a |
  cis4. cis8  a4. a8 |
  a4^\fermata r r2 \bar "|."
}

violaPartTwo = \relative c' {
  R1 * 3/4 * 21 ^ \markup {\smallCaps [Tacet]}
  \bar "|."
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
  \time 3/4
  d4 r r
  d4 r r
  a r r
  a r r
  a' a f e e e |
  e r r8 a, |
  a4 r r8 a
  a4 r r8 a
  a4 r cis'8. cis16 |
  cis4 r r
  cis4 r r
  a, r r |
  cis' r r |
  a, r r |
  a'16 a g f e f e d cis d cis b |
  a8 e' cis a e' a, |
  d16 d' c bes a bes a g f g f e |
  d4^\fermata \fine r r |
  R1 * 3/4 * 17
  \quote-with-clef "vda3" "Viola d'amore" "treble" {
    R1 * 6/4
  }
  a4 r r |
  f' r r |
  c r r |
  c r r |
  c r r |
  c r r |
  c r r |
  c16 f e d c d c bes a bes a g f f' e d c d c bes a bes a g |
  f8 bes c4 c, |
  \rn f'8
  \rn c
  \rn f
  \rn c
  \rn cis
  \rn d
  \rn b
  \rn c
  \rn a
  \rn b
  \rn gis
  \rn a
  \rn c
  \rn d
  \rn d
  \rn e
  \rn a,
  \rn e'
  \rn e
  a,4 r r 
  a r r 
  e' r r 
  e r r 
  gis, r r 
  gis r r 
  gis r r 
  gis' r r 
  gis, r r 
  r16 e'' d c b c b a gis a gis fis |
  e8 b' gis e b' e, |
  r16 e' d c b c b a gis a gis fis |e8 a c a e' e, |
  a,4 r r |
  R1 * 3/4 * 33
  \dc-al-fine
  \bar "|."
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}

