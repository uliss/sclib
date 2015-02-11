\version "2.18.2"

info-composer = "Luigi Boccherini"
info-composer-years = "(1743 – 1805)"
info-title = "Sonata for viola and cello"
info-subtitle = "(c–moll)"
info-instrument = "Violoncello"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"
\include "src.cello.ly"

#(set-global-staff-size 19)

\book {
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  \bookpart {
    \header {
      title = \markup { \markup-title \info-title }
      %subsubtitle = "for viola and cello"
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
      tagline = \markup { \markup-tagline }
    }
    \score {
      {
        \celloPartOne
      }
      \header {
        piece = \markup \markup-piece "I. Moderato"
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
        \celloPartTwo
      }
      \header {
        piece = \markup \markup-piece "II. Largo"
        breakbefore = ##t
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
        \celloPartThree
      }
      \header {
        piece = \markup \markup-piece "III. Minuetto"
      }
    }
  }
}

