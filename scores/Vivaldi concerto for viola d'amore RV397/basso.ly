\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Violoncello"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
%\include "src.violadamore.ly"
\include "src.basso.ily"

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
      title = \markup { \markup-title {  \smallCaps "Concerto" "in La minore" }}
      subtitle = \markup { \markup-subtitle "per Viola d'amore, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV397"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      {
        \set Score.skipBars = ##t
        \clef bass
        \key a \minor
        \time 3/4
        \celloPartOne
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
        \clef bass
        \time 4/4
        \celloPartTwo
      }
      \layout {
        ragged-last = ##f
        indent = #40
        line-width = #140
      }
    }

    \score {
      \header {
        piece =\markup \markup-piece "III. (Allegro)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        \clef bass
        \key a \minor
        \time 2/4
        \celloPartThree
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
        \context {
          \Staff
          \consists #Measure_counter_engraver
        }
      }
    }
  }
}
