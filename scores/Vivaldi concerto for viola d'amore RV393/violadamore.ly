\version "2.24.0"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Viola d'amore"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violadamore.ly"

#(set-global-staff-size 19)

scordatura = \markup {
  \raise #5
  \score {
    \new Staff \with {
      \remove "Time_signature_engraver"
      \remove "Key_engraver"
      fontSize = #-4
      \override StaffSymbol.staff-space = #(magstep -4)
    } {
      \override Staff.Clef.space-alist.first-note = #'(extra-space . 3)
      \clef alto
      \cadenzaOn
      <d a d' f' a' d''>1
    }
    \layout {
      ragged-right = ##t
      indent = 1\cm
      line-width = 2\cm
    }
  }
  \hspace #.5
}

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
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV393"
    }
    \score {
      \header {
        piece = \markup \markup-piece "I. (Allegro)"
      }
      \new Staff \with {
        instrumentName = \scordatura
      }
      {
        \set Score.skipBars = ##t
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
        \override Staff.TimeSignature.style = #'single-digit
        \vdaPartTwo
      }
    }

    \score {
      \header {
        piece =\markup \markup-piece  "III. (Allegro)"
        opus = ""
      }
      {
        \set Score.skipBars = ##t
        \override Staff.TimeSignature.style = #'single-digit
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
convert-ly (GNU LilyPond) 2.24.4  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
