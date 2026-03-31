\version "2.24.0"

#(cond ((not (defined? 'vdaPartOne))
        (ly:parser-define! vdaPartOne #{ s1 #} )))

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
    \tag-parts \once \override MultiMeasureRest.staff-position = #-6
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
    \tag-parts \once \override MultiMeasureRest.staff-position = #-6
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
        (ly:parser-define! vdaPartThree #{ s1 #} )))
\tag-quote "vda3" \vdaPartThree

rn = #(define-scheme-function (note)
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
  d4^\fermata \fine \bar "||" \noBreak r r |
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



%{
convert-ly (GNU LilyPond) 2.24.4  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
