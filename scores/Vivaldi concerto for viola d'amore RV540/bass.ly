\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Basso"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-parts
\include "src.violadamore.ly"
\include "src.lute.ly"
\include "src.bass.ly"
\include "src.tacet.ly"

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
        \context Staff=A \IBasso
        %\context FiguredBass \IFigures
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
          \clef bass
          \tacet
        }
        \header {
            piece = \markup \markup-piece "Largo"
            opus = ""
            breakbefore = ##t
        }
    }
    
    \score {
      <<
        \context Staff=A \IIIBasso
        %\context FiguredBass \IIIFigures
      >>

      \header { 
        piece = \markup \markup-piece "Allegro" 
        opus = ""
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