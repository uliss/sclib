\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-composer = "Antonio Vivaldi"
info-composer-years = "(1678 – 1741)"
info-title = "Concerto per Viola d'amore, Archi e Cembalo"
info-subtitle = "RV393 (d–moll)"
info-instrument = "Score"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-score
\include "src.violadamore.ly"
\include "src.violinI.ly"
\include "src.viola.ly"
\include "src.basso.ly"



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
      subtitle = \markup { \markup-subtitle "per Viola d'amore, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      opus = "RV393"
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
                  \key d \minor
                  \violinI-partI
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \key d \minor
                  R1 * 89
                }
              >>
            }
            \new Staff \with {
              instrumentName = "Viole"
            }
            {
              \key d \minor
              \clef alto
              \score-only
              \violaPartOne
            }
            \new Staff \with {
              instrumentName = "Basso"
            }
            {
              \score-only
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
              \key d \minor
              \time 4/4
              R1 * 89
            }
            \new Staff {
              \score-only
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
            \vdaPartTwo
          }
          \new Staff \with {
            instrumentName = "Bass"
          }
          {
            \score-only
            \celloPartTwo
          }
          \new PianoStaff \with {
            instrumentName = "Cembalo"
          }
          {
            <<
              \new Staff {
                \key d \minor
                \time 4/4
                R1*3/4 * 21
              }
              \new Staff {
                \score-only
                \celloPartTwo
              }
            >>
          }
        >>
      }
      \layout {
        \override Staff.TimeSignature.style = #'single-digit
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
            \time 3/4
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
                    \key d \minor
                    R1 * 3/4 * 114
                  }
                  \new Staff \with {
                    instrumentName = "II."
                  }
                  {
                    \key d \minor
                    R1 * 3/4 * 114
                  }
                >>
              }
              \new Staff \with {
                instrumentName = "Viole"
              }
              {
                \key d \minor
                \clef alto
                \score-only
                \violaPartThree
              }
              \new Staff \with {
                instrumentName = "Basso"
              }
              {
                \score-only
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
                \key d \minor
                R1 * 3/4 * 114
              }
              \new Staff {
                \score-only
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
          \override Staff.TimeSignature.style = #'single-digit
        }
        \context {
          \Score
          \sp-spacing-eights
        }
      }
    }
  }
}
