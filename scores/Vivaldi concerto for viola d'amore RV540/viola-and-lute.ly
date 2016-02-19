\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-score
\include "src.violadamore.ly"
\include "src.lute.ly"

#(set-global-staff-size 16)

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
      \new StaffGroup
      {
        <<
          \new Staff \with {
            instrumentName = "Viola d'amore"
          }
          {
            \set Score.skipBars = ##t
            \time 2/4
            \score-only
            \vdaPartOne
            \bar "|."
          }
          \new Staff \with {
           instrumentName = "Liuto" 
          }
          {
            \set Score.skipBars = ##t
            \time 2/4
            \score-only
            \lutePartOne
            \bar "|."
          }
        >>

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
      \new StaffGroup
      {
        <<
          \new Staff \with {
            instrumentName = "Viola d'amore"
          }
          {
            \set Score.skipBars = ##t
            \time 4/4
            \score-only
            \vdaPartTwo
            \bar "|."
          }
          \new Staff \with {
           instrumentName = "Liuto" 
          }
          {
            \set Score.skipBars = ##t
            \time 4/4
            \score-only
            \lutePartTwo
            \bar "|."
          }
        >>
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
      \new StaffGroup
      {
        <<
          \new Staff \with {
            instrumentName = "Viola d'amore"
          }
          {
            \set Score.skipBars = ##t
            \time 3/8
            \score-only
            \vdaPartThree
            \bar "|."
          }
          \new Staff \with {
           instrumentName = "Liuto" 
          }
          {
            \set Score.skipBars = ##t
            \time 3/8
            \score-only
            \lutePartThree
            \bar "|."
          }
        >>
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
