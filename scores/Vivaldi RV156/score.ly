\version "2.24.0"
\include "../../include/sclib.ly"
\include "info.ily"

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
      opus = \info-opus
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
                  \override Score.BarNumber.padding = #1.8
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
                  \override Score.BarNumber.padding = #1.9
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
                  \override Score.BarNumber.padding = #1.9
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

%{
convert-ly (GNU LilyPond) 2.24.2  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
