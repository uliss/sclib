\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Liuto"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violinI.ly"
\include "src.violadamore.ly"
\include "src.lute.ly"

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
      \new Staff
      {
        \set Score.skipBars = ##t
        \time 2/4
        \lutePartOne
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
        \lutePartTwo
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
        \time 3/8
        \lutePartThree
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
