\version "2.18.2"

info-composer = "Antonio Vivaldi"
info-composer-years = "(1678 – 1741)"
info-title = "Concerto per Viola d'amore, Archi e Cembalo"
info-subtitle = "RV393 (d–moll)"
info-instrument = "Viola d'amore"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"
\include "src.violadamore.ly"

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
      tagline = \markup { \markup-tagline }
      opus = "RV393"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      {
        \set Score.skipBars = ##t
        \vdaPartOne
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
        breakbefore = ##t
      }
      {
        \override Staff.TimeSignature.style = #'single-digit
        \vdaPartTwo
      }
    }

    \score {
      \header {
        piece =\markup \markup-piece  "III. (Allegro)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        \override Staff.TimeSignature.style = #'single-digit
        \vdaPartThree
      }
      \layout {
        %system-count = 11
        \context {
          \Staff
          \consists #Measure_counter_engraver
        }
      }
    }
  }
}
