\version "2.20.0"
\include "../../include/sclib.ly"
\include "info.ly"

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
      \override Staff.Clef #'space-alist = #'(first-note extra-space . 3)
      \clef alto
      \cadenzaOn
      \override Stem.transparent = ##t
      <d a d' f' a' d''>2 s
    }
    \layout {
      ragged-right = ##t
      indent = 0.5\cm
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
      opus = "RV395"
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
        piece = \markup \markup-piece "II. (Andante)"
        opus = ""
        breakbefore = ##t
      }
      {
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
        %\override Staff.TimeSignature.style = #'single-digit
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
