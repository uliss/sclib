\version "2.18.2"


amoreScordatura = #(define-scheme-function (parser location accord)
   (ly:music?)
     #{
       \markup {
        \raise #5
        \score {
          \new Staff \with {
            \remove "Time_signature_engraver"
            \remove "Key_engraver"
            fontSize = #-4
            \override StaffSymbol.staff-space = #(magstep -4)
          } {
            \override Staff.Clef #'space-alist #'first-note = #'(extra-space . 3)
            \clef treble
            \cadenzaOn
            #accord
          }
          \layout {
            ragged-right = ##t
            indent = 1\cm
            line-width = 2\cm
          }
        }
        \hspace #.5
       }
     #}
   )