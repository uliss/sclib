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

celloPartOne = \relative c {
  \clef bass
  \key d \minor
  \time 4/4
  \celloPartOneExp
  d4 r r2 |
  R1 * 7 |
  r2 d8 d' d,16 d' cis d d,4 r8 d
  a a' a,16 a' g a a,4 r8  a'
  d,8 d' d,16 d' cis d d,4 r f r d r c r |
  R1 * 9 |
  r2  f,8 f' f,16 f' e f |
  f,4 r8 f' c c' c,16 c' bes c |
  c,4 r8 c8 f, f' f,16 f' e f |
  f4 r8 c  c c' c,16 c' bes c |
  c,4 c c c c c c c c c c8 c' g e |
  c f c f c c' c,16 c' bes c |
  f,8  f bes, c f, f' f,16 f' e f |
  c8 f c f c c' c,16 c' bes c |
  f,8 f bes, c f,4 r |
  f' r g8 f g g, |
  c d e c f g a f a a a a f f f f d d d d e fis gis e |
  e gis a gis a cis d cis |
  d r c r b r a r |
  gis4. a8 gis4. a8 |
  a,4 e' a,8 a' a,16 a' gis a |
  a,4 r8 a8 e e' e,16 e' d e |
  e,4 r8 e' a, a' c, a |
  e4 e e e e e e e |
  a8 a e' e, a4 r |
  R1 * 22 |
  \celloPartOneExp
  d4^\fermata r r2
  \bar "|."
}

celloPartTwo = \relative c {
  \key d \minor
  \time 3/4
  \clef bass
  \repeat volta 2 {
    d8. a16 d4 a |
    d d ~ d8. d16 |
    a4 a' ~ a8. a,16 |
    d2 fis4 |
    g c, e |
    f bes, c |
    f,2. ~ f |
    f4 c'2 |
    f,2.
  }
  \repeat volta 2 {
    f'8. c16 f4 f, |
    c' e c f d2 |
    a4 a'8. g16 f8. e16 |
    d4 fis2 |
    g4 gis2 |
    a8. a,16 d4 a |
    d d ~ d8. d16 |
    a2 cis4 |
    d a' a, |
    d2.^\fermata
  }
}


#(define  (octave-up p)
   (let* ((o (ly:pitch-octave p))
          (a (ly:pitch-alteration p))
          (n (ly:pitch-notename p)))

     (begin (set!  o (+ o 1)))

     (ly:make-pitch o n a)))

#(define  (octave-down p)
   (let* ((o (ly:pitch-octave p))
          (a (ly:pitch-alteration p))
          (n (ly:pitch-notename p)))

     ;(cond ((eq? o 0)
     (begin (set!  o (- o 1)))
     ;  )    )


     (ly:make-pitch o n a)))

#(define (moctave-up music)
   (let* (
           (p (ly:music-property music 'pitch)))

     (if (ly:pitch? p)
         (begin
          (set! p (octave-up p))
          (ly:music-set-property! music 'pitch p)))

     music))

#(define (moctave-down music)
   (let* (
           (p (ly:music-property music 'pitch)))

     (if (ly:pitch? p)
         (begin
          (set! p (octave-down p))
          (ly:music-set-property! music 'pitch p)))

     music))

octup = #(define-music-function (parser location m)
           (ly:music?)
           (moctave-up m))

octdown = #(define-music-function (parser location m)
             (ly:music?)
             (moctave-down m))

#(define (make-eight o p)
   (make-music
    'NoteEvent
    'duration
    (ly:make-duration 3 0 1)
    'pitch
    (ly:make-pitch o (ly:pitch-notename p) 0))
   )

octaves = #(define-music-function (parser location p) (ly:pitch?)
             (
               make-music 'SequentialMusic

               'elements (
                           list
                           (make-music
                            'RestEvent
                            'duration
                            (ly:make-duration 3 0 1))
                           (make-eight (ly:pitch-octave p) p)
                           (make-eight 0 p)
                           (make-eight -2 p)
                           (make-eight 0 p)
                           (make-eight -2 p)
                           )
               )
             )

dbl = #(define-music-function (parser location m) (ly:music?)
         #{
           \repeat "unfold" 2 $m
         #}
         )


celloPartThree = \relative c {
  \time 3/4
  \key d \minor
  \clef bass
  \octaves d
  \octaves d
  \octaves a
  \octaves a
  \octaves d
  \octaves g,
  a4 r r8 a
  \dbl {a4 r r8 a}
  a4 r a8. a16 |
  \tuplet 3/2 4 {a8 bes a cis d cis e f e} |
  a4 r r
  \tuplet 3/2 4 {a,8 g a cis b cis e d e} |
  a4 r r
  \tuplet 3/2 4 {a,8 g a cis b cis e d e} |
  a16 a g f e f e d cis d cis b |
  a8 e' cis a e' a, |
  d16 d' c bes a bes a g f g f e |
  d4^\fermata_\smarkup-fine \bar "||" \noBreak  r r 
  \partbreak
  a r r |
  a r r |
  d d d d d d d d d d d' d |
  c d c bes g g a cis, cis d d fis |
  g g e f f f |
  c8 c 'c c, c' c, |
  \octaves f,
  \octaves c'
  \octaves f,
  \octaves f
  r f' c' c, c' c, |
  f, f f' f, f' f, |
   \octaves f
    \octaves c'
     \octaves c
      \octaves f,
       \octaves c'
        \octaves c
        f,16
        \clef tenor
        f'' e d c d c bes a bes a g f f' e d c d c bes a bes a g |
        f8 bes c4 \clef bass c, 
        
    f4 r r |
    R2.*18 |
    \octaves a, |
    \octaves a |
    \octaves e |
    \octaves e  |
    e'4 r r e r r |
     \tuplet 3/2 4 {e8 d e gis fis gis b a  b } |
    d4 r r
     \tuplet 3/2 4 {e,8 d e gis fis gis b a  b } |
     e16 e d c b c b a gis a gis fis |
     e8 b' gis e b' e, |
     r16 e' d c b c b a gis a gis fis |
     e8 a c a e' e, |
     a,4 r r |
     r8 a' d, a' d, a' |
     R2. |
     r8 g c, g' c, g' |
     R2. 
     r8 f bes, f' bes, f' |
     R2. |
     r8 a a, r r4 |
     r8 a' a, r r4 |
     r8 a' a, r r4 |
     r8 a' a, r r4 |
     \startMeasureCount
     \repeat "unfold" 21 {a2.~}
     a2.~_\smarkup-dc-fine
     a2.
     \stopMeasureCount
     
     \bar "|."
        


}
