\version "2.24.0"
\include "../../include/sclib.ly"
\include "info.ily"

info-project = #(project-url #{ \current-dir #})
info-instrument = "Bass"


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
      opus = \info-opus
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

%{
convert-ly (GNU LilyPond) 2.24.2  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
