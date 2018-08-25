\version "2.18.2"
\include "../../include/sclib.ly"
\include "info.ily"

info-instrument = "Score"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\make-score
\include "src.violadamore_primo.ily"
\include "src.violadamore_secondo.ily"
\include "src.figured.ily"
%\include "src.violinI.ily"
%\include "src.violinII.ily"
%\include "src.viola.ily"
\include "src.basso.ily"



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
            title = \markup { \markup-title {  \smallCaps "Partita VII" }}
            % subtitle = \markup { \markup-subtitle "per Two Violas d'amore e Cembalo" }
            composer = \markup { \markup-composer \info-composer \info-composer-years }
            % opus = "RV397"
        }
        \score {
            \header {
                piece = \markup \markup-piece "Paeludium"
            }
            <<
                \new StaffGroup \with {
                    instrumentName = "Viola d'amore"
                }{
                    <<
                        \new Staff \with {
                            instrumentName = "I."
                        }
                        {
                            \time 3/4
                            \score-only
                            \vdaPrimoPartA
                        }
                        \new Staff \with {
                            instrumentName = "II."
                        }
                        {
                            \time 3/4
                            \score-only
                            \vdaSecondoPartA
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \score-only
                    
                    \clef bass
                    <<
                    \bassPartA
                    \figuredBassA
                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
                %\override Staff.TimeSignature.style = #'single-digit
            }
        }
        
                \score {
            \header {
                piece = \markup \markup-piece "Allamande"
            }
            <<
                \new StaffGroup \with {
                   % instrumentName = "Viola d'amore"
                }{
                    <<
                        \new Staff \with {
                           % instrumentName = "I."
                        }
                        {
                            \time 3/4
                            \score-only
                            \vdaPrimoPartB
                        }
                        \new Staff \with {
                           % instrumentName = "II."
                        }
                        {
                            \time 3/4
                            \score-only
                            \vdaSecondoPartB
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \score-only
                    a
                   
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
                %\override Staff.TimeSignature.style = #'single-digit
            }
        }
    }
}
