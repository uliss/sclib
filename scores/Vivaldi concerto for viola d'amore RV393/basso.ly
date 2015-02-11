\version "2.18.2"

sp-tp-composer = "Antonio Vivaldi"
sp-tp-title = "Concerto per Viola d'amore, Archi e Cembalo"
sp-tp-subtitle = "RV393 (d–moll)"
sp-tp-instrument = "Basso"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"
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
      title = \markup { \normal-text { \smallCaps "Concerto" "in Re minore" } }
      subtitle = \markup {\normal-text "per Viola d'amore, Archi e Cembalo"}
      composer = \markup {\sp-composer \sp-tp-composer "(1678 – 1741)" }
      instrument = \markup {\normal-text \italic \sp-tp-instrument }
      tagline = \sp-tagline
      opus = "RV393"
    }
    \score {
      \header {
        piece = \markup \sp-style-piece "I. (Allegro)"
      }
      {
        \set Score.skipBars = ##t
        \celloPartOne
      }
      \layout {
        system-count = 13
      }
    }


    \score {
      \header {
        piece = \markup \sp-style-piece "II. (Largo)"
        opus = ""
      }
      {
        \override Staff.TimeSignature.style = #'single-digit
        \celloPartTwo
      }
    }

    \score {
      \header {
        piece =\markup \sp-style-piece  "III. (Allegro)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        \override Staff.TimeSignature.style = #'single-digit
        \celloPartThree
      }
      \layout {
        system-count = 11
        \context {
          \Staff
          \consists #Measure_counter_engraver
        }
      }
    }
  }
}
