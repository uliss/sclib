\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Score"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-score
%\include "src.violadamore.ily"
\include "src.violin1.ily"
\include "src.violin2.ily"
\include "src.viola.ily"
\include "src.cello.ily"
\include "src.basso.ily"
\include "src.figbass.ily"

\paper {
  system-separator-markup = \slashSeparator
}

#(set-global-staff-size 16)

\book {
  % title page
  \bookpart {
    \sp-title-page
    \pageBreak
  }

  % main part
  \bookpart {
    \header {
      title = \markup { \markup-title {  \info-title }}
      %subtitle = \markup { \markup-subtitle "per Viola d'amore, Archi e Cembalo" }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
    }
    \score {
      <<
        %\new Staff \with {
        %  instrumentName = "Viola d'amore"
        %}
        %{
        %  \time 3/4
        %  \key a \minor
        %  \score-only
        %  s
        %  %\vdaPartOne
        %}
        \new StaffGroup {
          <<
            \new StaffGroup \with {
              instrumentName = "Violini"
            }{
              <<
                \new Staff \with {
                  instrumentName = "I."
                }
                {
                  \time 3/4
                  \key a \minor
                  \score-only
                  \violinI
                }
                \new Staff \with {
                  instrumentName = "II."
                }
                {
                  \key a \minor
                  \score-only
                  \violinII
                }
              >>
            }
            \new Staff \with {
              instrumentName = "Viole"
            }
            {
              \key a \minor
              \clef alto
              \score-only
              \violaPart
            }
            \new Staff
            {
              \override Staff.InstrumentName.self-alignment-X = #CENTER
              \set Staff.instrumentName = \markup \center-column {
                "Violoncello"
                "del"
                "Concertino"
              }
              \score-only
              \clef bass
              \celloPartOne
            }
            \new Staff {
              %instrumentName = "Basso"
              <<
                \set Staff.instrumentName = "Basso"
                \new Voice {
                  \clef bass
                  \key a \minor
                  \time 3/4
                  \continuo
                }
                \figbass
              >>
            }
          >>
        }
      >>
      \layout {
        \context {
          \Score
          \sp-spacing-quoters
          markFormatter = #format-mark-circle-numbers
        }
      }
    }
  }
}
