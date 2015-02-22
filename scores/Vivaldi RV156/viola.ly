\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Viola"
info-project = #(project-url #{ \current-dir #})
info-version = "1.0"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.bass.ly"
\include "src.viola.ly"

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
      \header {
        opus = " "
        %piece = \markup \markup-piece "I. Allegro"
      }
      \new Staff
      {
        \set Score.skipBars = ##t
        \tempo "Allegro"
        \viola-partI
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
        breakbefore = ##t
        %piece = \markup \markup-piece "I. Allegro"
      }
      \new Staff
      {
        \set Score.skipBars = ##t
        \tempo "Adagio"
        \clef alto
        \viola-partII
      }
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
    }
    
    \score {
      \header {
        opus = " "
        %piece = \markup \markup-piece "I. Allegro"
      }
      \new Staff
      {
        \set Score.skipBars = ##t
        \tempo "Allegro"
        \time 3/8
        \clef alto
        \viola-partIII
      }
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
    }
    
  }
}