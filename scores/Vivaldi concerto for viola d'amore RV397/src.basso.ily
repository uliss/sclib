\version "2.24.0"

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
      (ly:parser-define! vdaPartOne #{ s1 #} )))

\tag-quote "vda1" \vdaPartOne

rI = #(define-scheme-function (p1 p2)
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

celloPartOne = \relative c {
  \rI a a
  \rI a a
  \rI a e'
  \rI e e
  \rI e e
  \rI e a,
  \rI a a
  \rI a d
  \rI d d
  \rI d g
  \rI g b,
  \rI b c
  \rI c a
  \rI a a
  \rI a a
  \rI a e'
  e4 r r
  a, e' e,
  a r r |
  a-\solo r r |
  a4 r8 a' b e,
  a,4 r r
  a r r
  a r8 a' b e, |
  a,4-\tutti r4 r8 a |
  c4 r8 c-\solo e c |
  g'4 r8 g, b g |
  d'4 r8 d f d |
  a'4 r8 a, cis a |
  e'4 r8 e g e |
  b'4 r8 b, dis b |
  b4 b b e8 e, e4 r |
  r8 e8 e4 r
  r8 e8 e4 r
  r8 e8 e4 r
  r8 e8 e4 r
  e' r r |
  g, a b |
  <>-\tutti
  \rI e e
  \rI e e
  \rI e b
  \rI b b
  \rI b b
  \rI b b
  e4 r r |
  e a, b |
  e r r |
  e-\solo r r dis r r b r r e r r e r r c r r c r r |
  cis r r cis r r b r r e r r e r r a, r r a r r d r r |
  d r r g, r r g r r g r r g r r |
  c r r c r r f r r |
  g e e f f f g g g |
  <>-\tutti
  \rI c, c
  \rI c g
  \rI g g
  \rI g c
  \rI c c
  \rI c c
  \rI g c
  f4 g g,

  <>-\solo
  \repeat unfold 2 {
    c4 c8 f g g, |
    c4 c8 f g g, |
    c4 r r |
  }

  c8 e g c e, c
  \repeat unfold 2 {
    d4 d8 g a a, |
    d4 d8 g a a, |
    d4 r r
  }
  d8 f a d fis, dis |

  \repeat unfold 2 {
    e4 e8 a b b,
    e4 e8 a b b,
    e4 r r
  }
  e2.
  a4 d,2 |g2.  gis |
  a a d gis,, ~ gis ~ gis |
  <>-\tutti
  \rI a a
  \rI a e'
  \rI e e
  \rI e e
  a,4 r r |
  b r r c r r d r r e r r |
  a, b c d e f e e e e e e e e e |
  e2 a,4 e'2 e4 c8 a e'4 e, |
  \rI a a
  \rI a a
  \rI a e'
  e r r a, e' e, |
  a2.\fermata \bar "|."
}

celloPartTwo = \relative c {
  R1 * 18 ^ \markup {\smallCaps [Tacet]}
  \bar "|."
}



%#(cond ((not (defined? 'vdaPartTree))
%       (define vdaPartTree #{ s1 #} )))
\tag-quote "vda3" { \vdaPartThree }

celloPartThree = \relative c {
  \set beamExceptions = #'((end . (
                                    ((1 . 8) . (4))
                                    ((1 . 16) . (4))
                                    )))

  a'16 gis f e d c b a |
  e'4 e' gis, e a r8 a, |
  c b c a e'4 gis |
  a16 g fis e d c b a |
  e'4 e' |
  gis, e |
  a r8 a, c b c a e'2 |
  R2
  a16 g? f e d c b a
  R2
  g'16 f e d c b a g |
  R2
  f'16 e d c b a g f |
  e8 e e e a a e' e, |
  a'16 g? f e d c b a |
  e'8 e e e a, a e' e, |
  a4 r |
  R2 * 24 |
  \tag #'cue { \cueDuring "vda3" #UP { \clef treble R2 * 2 \clef bass  } }
  \tag #'score { R2* 2 }
  c'16 b a g f e d c g4 g' |
  b, g |
  c r8 c8 e d e c g'4 b |
  c16 b a g f e d c g4 g' |
  b, g c r8 c |
  e d e c g'2 |
  c16 b a g f e d c g'4 g, |
  c r
  R2 * 14 |
  \tag #'cue { \cueDuring "vda3" #UP { \clef treble R2 * 3 \clef bass  } }
  \tag #'score { R2* 3 }
  e'16 d c b a g fis e |
  b4 b' |
  dis, b e r8 e g fis g e |
  b4 dis |
  e r |
  e'16 d c b a g fis e |
  R2
  d'16 c b a g fis e d |
  R2 |
  c'16 b a g fis e d c |
  b8 b b b e e b' b, |
  e'16 d c b a g fis e |
  b8 b b b e e b' b, |
  e4 r
  e,\solo r dis' r
  dis  r e r
  e, r a r a r d r d, r |
  g r g r a r a r d a |
  d'16\tutti c bes? a g f e d |
  a4 a' cis, a d r8 d |
  f e f d
  a'4 cis |
  d r |
  d16 c bes a g f e d |
  R2
  d'16 c bes a g f e d |
  d8 d a' a,
  d8 d a' a,
  d8 d\solo d d a a a a d d d d |
  a a a a d d d d e e e e e e e e e e e e
  \repeat unfold 5 {e e e e} |
  e d c b |
  a4 r
  R2 * 15
  \tag #'cue { \cueDuring "vda3" #UP { \clef treble R2 * 2 \clef bass  } }
  \tag #'score { R2* 2 }
  a'16\tutti gis f e d c b a |
  e'4 e' |
  gis, e a r8 a,
  c b c a e'4 gis |
  a16 g fis e d c b a |
  e'4 e' gis, e |
  a r8 a, c b c a e'2 |
  R2
  a16 g f e d c b a
  R2
  g'16 f e d c b a g |
  R2
  f'16 e d c b a g f |
  e8 e e e a a e' e, |
  a'16 g f e d c b a |
  e'8 e e e a, a e' e, |
  a4\fermata r
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


%{
convert-ly (GNU LilyPond) 2.24.4  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
