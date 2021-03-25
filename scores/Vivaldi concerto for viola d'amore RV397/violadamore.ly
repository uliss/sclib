\version "2.20.0"
\include "../../include/sclib.ly"
\include "../../include/amore.ily"
\include "info.ily"

info-instrument = "Viola d'amore"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violadamore.ily"

#(set-global-staff-size 19)

%scordatura = \markup { \markup-scordatura <c> }

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
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV397"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      \new Staff \with {
        instrumentName = \amoreScordatura <e a c' e' a' e''>1
      }
      {
        \set Score.skipBars = ##t
        \key a \minor
        \time 3/4
        \clef treble
        \vdaPartOne
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
      {
        \set Score.skipBars = ##t
        \key a \minor
        \time 4/4
        \clef treble
        \vdaPartTwo
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
        \set Score.skipBars = ##t
        \set Timing.beamExceptions = #'()
        \vdaPartThree
      }
      \layout {
        %system-count = 11
        \context {
          \Staff
          \consists #Measure_counter_engraver
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
