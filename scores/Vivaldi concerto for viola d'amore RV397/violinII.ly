\version "2.24.0"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Violin II"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violadamore.ily"
\include "src.violinII.ily"

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
      \keepWithTag #'cue {
        \set Score.skipBars = ##t
        \override Staff.TimeSignature.style = #'single-digit
        \key a \minor
        \time 3/4
        \violinII-partI
      }
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
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
        \key a \minor
        \violinII-partII
      }
    }

    \score {
      \header {
        piece =\markup \markup-piece  "III. (Allegro)"
        opus = ""
      }
      \keepWithTag #'cue {
        \set Score.skipBars = ##t
        \key a \minor
        \time 2/4
        \violinII-partIII
      }
      \layout {
        \context {
          \Staff
          \consists #Measure_counter_engraver
        }
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
    }
  }
}


%{
convert-ly (GNU LilyPond) 2.24.4  convert-ly: Processing `'...
Applying conversion: 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
