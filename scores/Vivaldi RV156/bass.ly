\version "2.18.2"
\include "../../include/sclib.ly"

info-composer = "Antonio Vivaldi"
info-composer-years = "(1678 – 1741)"
info-title = "Concerto per Archi e Cembalo"
info-subtitle = "RV156 (g–moll)"
info-instrument = "Bass"
info-catalog-number = "004"
info-project = #(project-url #{ \current-dir #})
info-version = "1.0"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violinII.ly"
\include "src.bass.ly"

\paper {
  score-markup-spacing = #'((basic-distance . 9) (minimum-distance . 9))
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
      title = \markup { \markup-title {  \smallCaps "Concerto" "in Sol minore" }}
      subtitle = \markup { \markup-subtitle "per Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV393"
    }
    \score {
      \header {
        %piece = \markup \markup-piece "I."
      }
      \new Staff
      {

        \set Score.skipBars = ##t
        \tempo "Allegro"
        \bass-partI
      }
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
    }
    
    \paper {
        markup-system-spacing.minimum-distance = #0
        score-markup-spacing.minimum-distance = #2
    }

    \score {
      \header {
        %breakbefore = ##t
        %piece = \markup \markup-piece "II."
        opus = " "
      }
      \new Staff
      {

        \set Score.skipBars = ##t
        \tempo "Adagio"
        \clef bass
        \bass-partII
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
        %piece = \markup \markup-piece "III."
        opus = " "
        breakbefore = ##t
      }
      \new Staff
      {

        \set Score.skipBars = ##t
        \tempo "Allegro"
        \clef bass
        \bass-partIII
      }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
      }
    }
  }
}