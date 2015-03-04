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
      title = \markup { \markup-title {  \smallCaps "Concerto" "in Re minore" }}
      subtitle = \markup { \markup-subtitle "per Viola d'amore, Liuto, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
      instrument = \markup {\markup-instrument \info-instrument }
      opus = "RV540"
    }
    \score {
      <<
        \violinii-part-i
      >>

      \header { 
        piece = \markup \markup-piece "Allegro"
      }
      \layout {
        \context {
            \Score
            \sp-spacing-eights
        }
        \context {
          \CueVoice
          \override TupletBracket #'bracket-visibility = ##f
        }
      }
    }
    
    \score {
        \new Staff {
          \violini-part-ii
        }
        \header {
            piece = \markup \markup-piece "Largo"
            opus = ""
            %breakbefore = ##t
        }
        \layout {
            \context {
              \Score
              \sp-spacing-quoters
            }
        }
    }
    
    \score {
      \new Staff {
        \violinii-part-iii
      }

      \header { 
        piece = \markup \markup-piece "Allegro" 
        opus = ""
        breakbefore = ##t
      }
      \layout {
        \context {
            \Score
            \sp-spacing-eights
        }
        \context {
          \CueVoice
          \override TupletBracket #'bracket-visibility = ##f
        }
      }
    }


  }
}