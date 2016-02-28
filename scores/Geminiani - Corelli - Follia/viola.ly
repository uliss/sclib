\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Alto Viola"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.viola.ily"

#(set-global-staff-size 19)

\book {
  % title page
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  % main part
  \bookpart {
    \header {
      title = \markup { \markup-title {  \smallCaps \info-title }}
      %subtitle = \markup { "per Viola d'amore, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
    }
    \score {
      {
        \set Score.skipBars = ##t
        \clef alto
        \key a \minor
        \time 3/4
        \violaPart
      }
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
          markFormatter = #format-mark-circle-numbers
          doubleRepeatType = #":..:"
        }
      }
    }
  }
}
