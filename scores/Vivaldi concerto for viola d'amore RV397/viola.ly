\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Viola"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
%\include "src.violadamore.ly"
\include "src.viola.ily"

#(set-global-staff-size 19)

\book {
  % title page
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  % main part
  \bookpart {
    \header {
      title = \markup { \normal-text { \smallCaps "Concerto" "in La minore" } }
      subtitle = \markup {\normal-text "per Viola d'amore, Archi e Cembalo"}
      composer = \markup {\markup-composer \info-composer "(1678 – 1741)" }
      instrument = \markup {\normal-text \italic \info-instrument }
      opus = "RV397"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      {
        \set Score.skipBars = ##t
        \override Staff.TimeSignature.style = #'single-digit

        \key a \minor
        \clef alto
        \violaPartOne
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
        piece = \markup \markup-piece "II. (Largo)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        \time 4/4
        \clef alto
        \key a \minor
        \violaPartTwo
      }
      \layout {
        ragged-last = ##f
        %indent = #40
        %line-width = #140
      }

    }

    \score {
      \header {
        piece =\markup \markup-piece  "III. (Allegro)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        \time 2/4
         \clef alto
        \key a \minor
        \violaPartThree
      }
      \layout {
        \context {
          \Staff
          \consists #Measure_counter_engraver
        }
        \context {
          \Score
          \sp-spacing-eights
        }
      }
    }
  }
}
