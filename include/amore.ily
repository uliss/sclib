\version "2.20.0"


amoreScordatura = #(define-scheme-function (accord)
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
            \override Staff.Clef #'space-alist = #'((first-note minimum-space . 3.0))
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