\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Viola"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.viola.ly"

#(set-global-staff-size 18)

\book {
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  \bookpart {
    \header {
      title = \markup { \markup-title \info-title }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
    }
    \score {
      {
        \accidentalStyle Score.modern-cautionary
        \violaPartOne
      }
      \header {
        piece = \markup \markup-piece "I. Allegro moderato"
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
      }
    }

    \score {
      {
        \accidentalStyle Score.modern-cautionary
        \violaPartTwo
      }
      \header {
        piece = \markup \markup-piece "II. Largo"
        breakbefore = ##t
      }
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
    }

    \score {
      {
        \accidentalStyle Score.modern-cautionary
        \violaPartThree
      }
      \header {
        piece = \markup \markup-piece "III. Allegro"
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

