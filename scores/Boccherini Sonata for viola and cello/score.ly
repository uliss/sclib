\version "2.18.2"

info-composer = "Luigi Boccherini"
info-composer-years = "(1743 – 1805)"
info-title = "Sonata for viola and cello"
info-subtitle = "(c–moll)"
info-instrument = "Score"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

#(make-parts #f)
\include "src.viola.ly"
\include "src.cello.ly"

#(set-global-staff-size 16)

\book {
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  \bookpart {
    \header {
      title = \markup { \markup-title \info-title }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      %instrument = \markup {\markup-instrument \info-instrument }
      tagline = \markup { \markup-tagline }
    }
    \score {
      {
        \new StaffGroup {
          <<
            \new Staff \with {
              instrumentName = "Viola"
            } {
              \override DynamicLineSpanner.staff-padding = #3.5
              \violaPartOne
            }
            \new Staff \with {
              instrumentName = "Violoncello"
            }
            {
              \celloPartOne
            }
          >>
        }
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
        \new StaffGroup {
          <<
            \new Staff \with {
            } {
              \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
              %\override Score.SpacingSpanner.strict-note-spacing = ##t
              \violaPartTwo
            }
            \new Staff \with {
            }
            {
              \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
              %\override Score.SpacingSpanner.strict-note-spacing = ##t
              \celloPartTwo
            }
          >>
        }
      }
      \header {
        piece = \markup \markup-piece "II. Largo"
        breakbefore = ##t
      }
      \layout {
        \context {
          \Score
          \sp-spacing-halfs
        }
      }
    }

    \score {
      {
        \new StaffGroup {
          <<
            \new Staff \with {
            } {
              \violaPartThree
            }
            \new Staff \with {
            }
            {
              \celloPartThree
            }
          >>
        }
      }
      \header {
        piece = \markup \markup-piece "III. Minuetto"
        %breakbefore = ##t
      }
    }
  }
}

