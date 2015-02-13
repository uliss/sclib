\version "2.18.2"

info-composer = "Luigi Boccherini"
info-composer-years = "(1743 – 1805)"
info-title = "Sonata for viola and cello"
info-subtitle = "(c–moll)"
info-instrument = "Viola"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

partpagebreak = \pageBreak
partbreak = \break
\include "src.viola.ly"

#(set-global-staff-size 19)

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
      tagline = \markup { \markup-tagline }
    }
    \score {
      {
        \violaPartOne
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
        \violaPartTwo
      }
      \header {
        piece = \markup \markup-piece "II. Largo"
        breakbefore = ##t
      }
      \layout {
        \context {
          \Score
          \sp-spacing-sixteens
        }
      }
    }

    \score {
      {
        \violaPartThree
      }
      \header {
        piece = \markup \markup-piece "III. Minuetto"
      }
    }
  }
}

