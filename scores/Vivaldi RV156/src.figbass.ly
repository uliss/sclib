\version "2.18.2"

figbass-PartI = \new FiguredBass {
  \figuremode {
    \set figuredBassAlterationDirection = #RIGHT
    r2 <6 5> <6> <6 5> <6> <7 _+> <6 5>1
    <6 5>2 <6>
    <6 5>2 <6>
    <7_+> <6 5>1 <7 _->2 <7-> <7>
    <7>
    <7>
    <7 _+>1
    s1
    s2 <_+>4 <6 5>
    s <7-> s s <_+> <6 5!> s <_-> |
    s1 <_+>4 <6 4> <5 3+> <6 4> <5 3+> <6 4> <_+> <5 4>8 <3+> |
    s2 <6 5> <6> <6 5> <6> <_+> |
    s s <6 5> <6> <6 5> <6> |
    <_+> s s <7> <7> <7> <7> <7> <7 _+> s |
    <_+>4 <6 5!> <_!> <7-> |
    s s <_+> <6 5!> |
    <_!> <7!> s s |
    s1 s1 s1 s1 |
    s2 <6 5> <6> <6 5> <6> s <6 5> s <6 5> <6> <6 5> <6> |
    s1  s2 <7> <7> <7> <7>2 <7> <7>2. <6 4>4 |
    <5 3> <6 4> <5 3> <6 4> |
    <5 3>2 s s <6 5-> <6> <6- 5> |
    <6-> s <6 5-> s <6 5-> <6> |
    <6- 5> <6-> s1 s4 s <6 5 > <7> |
    <_-> s s s <_-> <7-> <_-> s |
    s s <6 5> s |
    <6>2 <6! 5-> s s <6 5> <_-> |
    <6 5> <6> <6 5-> <6> <_!> <6 5> <_-> <7-> |
    s1 s1
    s2 <6 5> <6> <6 5> <6> <_+>
    s s <_+>4 <6 5!> s <7-> s s <_+> <7 5!> <3!> <3-> <_+> s
    s <5 4>8 <3+>


  }
}

figbass-PartII = \new FiguredBass {
  \figuremode {
    \set figuredBassAlterationDirection = #RIGHT
    r2  <7>4 <6> <7 3+>2 <6 5> <7> <_+> <7>4 <6>4 <7>4 <6> |
    <7> <6>8 <7> r2 |
    <7 3!>4 <_-> <6 5> r |
    <6 5> <3-> <6 5-> r |
    <6- 5>1 |
    <7-> <7>4 <6> <7 _+>2 <7 3+>   <7! _+>
    <6 5>4  <3+>  r r |
    <6 5> <3+>
  }
}

pause = #(define-scheme-function (parser location bars)(integer?)
           (make-music
            'MultiMeasureRestMusic
            'duration
            (ly:make-duration 0 0 (* bars 3/8))
            'articulations
            '()))

figbass-PartIII = \new FiguredBass {
  \figuremode {
    \set figuredBassAlterationDirection = #RIGHT
    \pause 5
    <6->4. |
    \pause 5
    <7 _->
    <7->
    <7>
    <7>
    <7>
    <7 _+>
    s4.
    <_+>
    s4.
    <7 _+>
    s4. s |
    <7->
    \pause 13 |
    <7>4. 
    <7>
    <7>
    <7>
    <7>
    <7 _+>
    s
    <_+>
    s
    <7 _+>
    s s <7 3!> 
    <_-> s s s |
    <_->
    \pause 7
    <_->
    <7- 3->
    <7->
    <7>
    <7>
    <7>
    <7 3!> s s s |
    <6 5>
    <7>
    <_->
    <7>
    \pause 7 |
    <7 _->
    <7->
    <7>
    <7>
    <7>
    <7 _+>
    \pause 6 
    <3 _+>
    s
    <5 4>
    <3+>
    
    
    
  }
}


