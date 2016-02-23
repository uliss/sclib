\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Score"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-score
\include "src.violadamore.ily"
\include "src.violinI.ily"
\include "src.violinII.ily"
\include "src.viola.ily"
\include "src.basso.ily"



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
      title = \markup { \markup-title {  \smallCaps "Concerto" "in La minore" }}
      subtitle = \markup { \markup-subtitle "per Viola d'amore, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      opus = "RV397"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      <<
        \new Staff \with {
          instrumentName = "Viola d'amore"
        }
        {
          \time 3/4
          \key a \minor
          \score-only
          \vdaPartOne
        }
        \new StaffGroup {
          <<
            \new StaffGroup \with {
              instrumentName = "Violini"
            }{
              <<
                \new Staff \with {
                  instrumentName = "I."
                }
                {
                  \time 3/4
                  \key a \minor
                  \score-only
                  \violinI-partI
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \key a \minor
                  \score-only
                  \violinII-partI
                }
              >>
            }
            \new Staff \with {
              instrumentName = "Viole"
            }
            {
              \key a \minor
              \clef alto
              \score-only
              \violaPartOne
            }
            \new Staff \with {
              instrumentName = "Basso"
            }
            {
              \score-only
              \clef bass
              \celloPartOne
            }
          >>
        }
        \new PianoStaff \with {
          instrumentName = "Cembalo"
        }
        {
          <<
            \new Staff {
              \key a \minor
              R2. * 135
            }
            \new Staff {
              \score-only
              \clef bass
              \celloPartOne
            }
          >>
        }
      >>
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
        \override Staff.TimeSignature.style = #'single-digit
      }
    }


    \score {
      \header {
        piece = \markup \markup-piece "II. (Largo)"
        opus = ""
        breakbefore = ##t
      }
      {
        <<
          \new Staff \with {
            instrumentName = "Viola d'amore"
          }
          {
            \time 4/4
            \clef treble
            \key a \minor
            \score-only
            \vdaPartTwo
          }
          \new StaffGroup \with {
            instrumentName = "Violini"
          }
          {
            <<
              \new Staff \with {instrumentName = "I" } {
                \score-only
                \violinI-partII
              }
              \new Staff \with {instrumentName = "II" } {
                \score-only
                \violinII-partII
              }
            >>
          }
          \new Staff \with {
            instrumentName = "Viola"
          }
          {
            \time 4/4
            \clef alto
            \key a \minor
            \score-only
            \violaPartTwo
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
      {
        %\override Staff.TimeSignature.style = #'single-digit
        <<
          \new Staff \with {
            instrumentName = "Viola d'amore"
          }
          {
            \time 2/4
            \key a \minor
            \score-only
            \vdaPartThree
          }
          \new StaffGroup {
            <<
              \new StaffGroup \with {
                instrumentName = "Violini"
              }{
                <<
                  \new Staff \with {
                    instrumentName = "I."
                  }
                  {
                    \time 2/4
                    \key a \minor
                    \score-only
                    \violinI-partIII
                  }
                  \new Staff \with {
                    instrumentName = "II."
                  }
                  {
                    \key a \minor
                    \score-only
                    \violinII-partIII
                  }
                >>
              }
              \new Staff \with {
                instrumentName = "Viole"
              }
              {
                \key a \minor
                \clef alto
                \score-only
                \violaPartThree
              }
              \new Staff \with {
                instrumentName = "Basso"
              }
              {
                \score-only
                \clef bass
                \key a \minor
                \celloPartThree
              }
            >>
          }
          \new PianoStaff \with {
            instrumentName = "Cembalo"
          }
          {
            <<
              \new Staff {
                \key a \minor
                R2 * 182
              }
              \new Staff {
                \score-only
                \clef bass
                \key a \minor
                \celloPartThree
              }
            >>
          }
        >>
      }
      \layout {
        %system-count = 11
        \context {
          \Staff
          \remove #Measure_counter_engraver
        }
        \context {
          \Score
          \sp-spacing-eights
        }
      }
    }
  }
}
