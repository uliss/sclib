\version "2.20.0"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Violoncello"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violadamore.ly"
\include "src.basso.ly"

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
      subtitle = \markup { \markup-subtitle "per Viola d'amore, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV395"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      {
        \set Score.skipBars = ##t
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
        piece = \markup \markup-piece "II. (Andante)"
        opus = ""
      }
      {
        %\override Staff.TimeSignature.style = #'single-digit
        \celloPartTwo
      }
    }

    \score {
      \header {
        piece =\markup \markup-piece "III. (Allegro)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        %\override Staff.TimeSignature.style = #'single-digit
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


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
