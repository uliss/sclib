\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Viola d'amore"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violinI.ly"
\include "src.lute.ly"

\include "src.violadamore.ly"

\paper {
  ragged-last-bottom = ##f
}

#(set-global-staff-size 20)

scordatura = \markup {
  \raise #5
  \score {
    \new Staff \with {
      \remove "Time_signature_engraver"
      \remove "Key_engraver"
      fontSize = #-4
      \override StaffSymbol.staff-space = #(magstep -4)
    } {
      \override Staff.Clef #'space-alist #'first-note = #'(extra-space . 3)
      \clef alto
      \cadenzaOn
      <d a d' f' a' d''>1
    }
    \layout {
      ragged-right = ##t
      indent = 1\cm
      line-width = 2\cm
    }
  }
  \hspace #.5
}

\book {
  % title page
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  % main part
  \bookpart {
    \header {
      title = \markup { \markup-title {  \smallCaps "Concerto" "in Re minore" }}
      subtitle = \markup { \markup-subtitle "per Viola d'amore, Liuto, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV540"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      \new Staff \with {
        instrumentName = \scordatura
      }
      {
        \set Score.skipBars = ##t
        \time 2/4
        \vdaPartOne
        \bar "|."
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
        \context {
          \CueVoice
          \override TupletBracket #'bracket-visibility = ##f
        }
      }
    }


    \score {
      \header {
        piece = \markup \markup-piece "II. (Largo)"
        opus = ""
      }
      {
        \vdaPartTwo
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
      }
    }

    \score {
      \header {
        piece =\markup \markup-piece  "III. (Allegro)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        \vdaPartThree
      }
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
    }
  }
}
