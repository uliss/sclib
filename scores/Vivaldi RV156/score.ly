\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Score"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-score
\include "src.violinI.ly"
\include "src.violinII.ly"
\include "src.viola.ly"
\include "src.bass.ly"
\include "src.figbass.ly"

#(set-global-staff-size 15)

\paper {
  %system-system-spacing = #30
}

\book {
  % title page
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  \markup {
    \vspace #40
  }

  % main part
  \bookpart {
    \header {
      title = \markup { \markup-title {  \smallCaps "Concerto" "in Sol minore" }}
      subtitle = \markup { \markup-subtitle "per Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      opus = "RV393"
    }
    \score {
      \header {
        %piece = \markup \markup-piece "I. Allegro"
      }
      <<
        \new StaffGroup {
          \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
          \override Score.SpacingSpanner.strict-note-spacing = ##f
          <<
            \new StaffGroup \with {
              instrumentName = "Violini"
            }
            {
              <<
                \new Staff \with {
                  instrumentName = "I."
                }
                {
                  \override Score.BarNumber #'padding = #1.8
                  \tempo "Allegro"
                  \violinI-partI
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \score-only
                  \violinII-partI
                }
              >>
            }
            \new Staff \with {
              instrumentName = "Viole"
            }
            {
              \tempo "Allegro"
              \clef alto
              \viola-partI
            }
            \new Staff \with {
              instrumentName = "Violoncelli"
            }
            {
              <<
                \bass-partI
              >>
            }
          >>
        }
        \new PianoStaff
        \with {
          instrumentName = "Cembalo"
        }
        {
          <<
            \new Staff {
              \key d \minor
              R1 * 77
            }
            \new Staff {
              <<
                \bass-partI
                \figbass-PartI
              >>
            }
          >>
        }
      >>
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
      }
    }

    \score {
      \header {
        opus = " "
        %piece = \markup \markup-piece "I. Allegro"
      }
      <<
        \new StaffGroup {
          %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
          \override Score.SpacingSpanner.strict-note-spacing = ##f
          <<
            \new StaffGroup \with {
              instrumentName = "Violini"
            }
            {
              <<
                \new Staff \with {
                  instrumentName = "I."
                }
                {
                  \override Score.BarNumber #'padding = #1.9
                  \tempo "Adagio"
                  \violinI-partII
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \tempo "Adagio"
                  \violinII-partII
                }
              >>
            }
            \new Staff \with {
              instrumentName = "Viole"
            }
            {
              \clef alto
              \viola-partII
            }
            \new Staff \with {
              instrumentName = "Violoncelli"
            }
            {
              <<
                \clef bass
                \bass-partII
              >>
            }
          >>
        }
        \new PianoStaff
        \with {
          instrumentName = "Cembalo"
        }
        {
          <<
            \new Staff {
              \key d \minor
              R1 * 13
            }
            \new Staff {
              <<
                \clef bass
                \bass-partII
                \figbass-PartII
              >>
            }
          >>
        }
      >>
      \layout {
        \context {
          \Score
          %\sp-spacing-eights
        }
      }
    }

    \score {
      \header {
        opus = " "
        %piece = \markup \markup-piece "I. Allegro"
      }
      <<
        \new StaffGroup {
          \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
          \override Score.SpacingSpanner.strict-note-spacing = ##f
          <<
            \new StaffGroup \with {
              instrumentName = "Violini"
            }
            {
              <<
                \new Staff \with {
                  instrumentName = "I."
                }
                {
                  \override Score.BarNumber #'padding = #1.9
                  \tempo "Allegro"
                  \violinI-partIII
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \violinII-partIII
                }
              >>
            }
            \new Staff \with {
              instrumentName = "Viole"
            }
            {
              \clef alto
              \score-only
              \viola-partIII
            }
            \new Staff \with {
              instrumentName = "Violoncelli"
            }
            {
              <<
                \clef bass
                \score-only
                \bass-partIII
              >>
            }
          >>
        }
        \new PianoStaff
        \with {
          instrumentName = "Cembalo"
        }
        {
          <<
            \new Staff {
              \key d \minor
              R1*3/8 * 100
            }
            \new Staff {
              <<
                \clef bass
                \score-only
                \bass-partIII
                \figbass-PartIII
              >>
            }
          >>
        }
      >>
      \layout {
        \context {
          \Score
          %\sp-spacing-eights
        }
      }
    }


    \paper {
      systems-per-page = 3
    }
  }
}