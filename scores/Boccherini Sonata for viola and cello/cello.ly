\version "2.18.2"

sp-tp-composer = "Luigi Boccherini"
sp-tp-title = "Sonata for viola and cello"
sp-tp-subtitle = "(c–moll)"
sp-tp-instrument = "Violoncello"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"
\include "src.cello.ly"

%\sp-paper-landscape
#(set-global-staff-size 20)

\book {
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  \bookpart {
    \header {
      title = "Sonata"
      subsubtitle = "for viola and cello"
      composer = \markup { \sp-composer "Luigi Boccherini" "(1743–1805)" }
      instrument = "Violoncello"
      tagline = \sp-tagline
    }
    \score {
      {
        \celloPartOne
      }
      \header {
        piece = \markup \sp-style-piece "I. Moderato"
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
        piece = \markup \sp-style-piece "II. Largo"
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
        piece = \markup \sp-style-piece "III. Minuetto"
      }
    }
  }
}

