\version "2.20.0"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Score"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-score
\include "src.violadamore.ly"
\include "src.violinI.ly"
\include "src.violinII.ily"
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
      opus = "RV395"
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
                  \score-only
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
        piece = \markup \markup-piece "II. (Andante)"
        opus = ""
        breakbefore = ##t
      }
      {
 <<
        \new Staff \with {
          instrumentName = "Viola d'amore"
        }
        {
          \time 3/4
          \vdaPartTwo
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
                  \score-only
                  \violinI-partII
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \key d \minor
                  \score-only
                  \violinII-partII
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
              \violaPartTwo
            }
            \new Staff \with {
              instrumentName = "Basso"
            }
            {
              \score-only
              \celloPartTwo
            }
          >>
        }
      >>
      }
      \layout {
        %\override Staff.TimeSignature.style = #'single-digit
      }
    }

    \score {
      \header {
        piece =\markup \markup-piece  "III. (Allegro)"
        opus = ""
      }
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
                  \score-only
                  \violinI-partIII
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \key d \minor
                  \score-only
                  \violinII-partIII
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
      >>
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


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
