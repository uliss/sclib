\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Score"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violadamore.ly"
\include "src.lute.ly"
\include "src.violinI.ly"
\include "src.violinII.ly"
\include "src.viola.ly"
\include "src.bass.ly"

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

#(set-global-staff-size 15)

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
      <<
        \new Staff \with { instrumentName = "Viola d'amore" }
        {
          \score-only
          \vdaPartOne
        }
        \new Staff \with { instrumentName = "Liuto" }
        {
          \score-only
          \lutePartOne
        }
        \new StaffGroup {
          <<
            \new StaffGroup \with { instrumentName = "Violini" }
            {
              \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
              <<
                \new Staff \with { instrumentName = "I." }
                {
                  \score-only
                  \violini-part-i
                }
                \new Staff \with { instrumentName = "II." }
                {
                  \score-only
                  \violinii-part-i
                }
              >>
            }
            \new Staff \with { instrumentName = "Viole" }
            {
              \score-only
              \viola-part-i
            }
            \new Staff \with { instrumentName = "Violoncelli" }
            {
              \score-only
              <<
                { \IBasso }
                \\
                { \IFigures }
              >>
            }
          >>
        }
      >>

      \header {
        piece = \markup \markup-piece "Allegro"
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
        \context {
          \CueVoice
          \override TupletBracket #'bracket-visibility = ##f
        }
      }
    }
    \paper {
      systems-per-page = 3
    }

    \score {
      <<
        \new Staff \with { instrumentName = "Viola d'amore" }
        {
          \score-only
          \vdaPartTwo
        }
        \new Staff \with { instrumentName = "Liuto" }
        {
          \score-only
          \lutePartTwo
        }
        \new StaffGroup {
          \override StaffGroup.SystemStartBracket.collapse-height = #4
          \override Score.SystemStartBar.collapse-height = #4
          <<
            \new StaffGroup
            {
              \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
              <<
                \new Staff \with { instrumentName = "Violini I. II." }
                {
                  \score-only
                  \violini-part-ii
                }
              >>
            }
          >>
        }
      >>

      \header {
        piece = \markup \markup-piece "Largo"
        opus = ""
        breakbefore = ##t
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
        \context {
          \CueVoice
          \override TupletBracket #'bracket-visibility = ##f
        }
      }
    }

    \paper {
      systems-per-page = ##f
    }

    \score {
      <<
        \new Staff \with { instrumentName = "Viola d'amore" }
        {
          \score-only
          \vdaPartThree
        }
        \new Staff \with { instrumentName = "Liuto" }
        {
          \overrideTimeSignatureSettings
          3/8               % timeSignatureFraction
          1/16               % baseMomentFraction
          #'(6)           % beatStructure
          #'(
              (end . (
                       ((1 . 16) . (6))
                       ((1 . 32) . (4 4 4))
                       )))
          \score-only
          \lutePartThree
        }
        \new StaffGroup {
          <<
            \new StaffGroup \with { instrumentName = "Violini" }
            {
              \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
              <<
                \new Staff \with { instrumentName = "I." }
                {
                  \score-only
                  \violini-part-iii
                }
                \new Staff \with { instrumentName = "II." }
                {
                  \score-only
                  \violinii-part-iii
                }
              >>
            }
            \new Staff \with { instrumentName = "Viole" }
            {
              \score-only
              \viola-part-iii
            }
            \new Staff \with { instrumentName = "Violoncelli" }
            {
              \score-only
              <<
                { \IIIBasso }
                \\
                { \IIIFigures }
              >>
            }
          >>
        }
      >>

      \header {
        piece = \markup \markup-piece "Allegro"
        breakbefore = ##t
        opus = ""
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
        \context {
          \CueVoice
          \override TupletBracket #'bracket-visibility = ##f
        }
      }
    }
    \paper {
      %systems-per-page = 3
    }


  }
}