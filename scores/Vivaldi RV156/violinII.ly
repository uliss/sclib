\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Violino II"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violinI.ly"
\include "src.violinII.ly"

\book {
  % title page
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  % main part
  \bookpart {
    \header {
      title = \markup { \markup-title {  \smallCaps "Concerto" "in Sol minore" }}
      subtitle = \markup { \markup-subtitle "per Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV393"
    }
    \score {
      \new Staff
      {
        \set Score.skipBars = ##t
        \tempo "Allegro"
        \violinII-partI
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
        opus = " "
        %piece = "II. Adagio"
      }
      \new Staff
      {
        \set Score.skipBars = ##t
        \tempo "Adagio"
        \violinII-partII
      }
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
        breakbefore = ##t
        %piece = "II. Adagio"
      }
      \new Staff
      {
        \set Score.skipBars = ##t
        \tempo "Allegro"
        \time 3/8
        \violinII-partIII
      }
      \layout {
        \context {
          \Score
          %\sp-spacing-eights
        }
      }
    }
  }
}