\version "2.18.2"
\include "../../include/sclib.ly"
\include "../../include/amore.ily"
\include "info.ily"

info-instrument = "Viola d'amore"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

%\make-score
\include "src.violadamore_primo.ily"
\include "src.violadamore_secondo.ily"

#(set-global-staff-size 16)

% vdaPrimoPartA = s4
% vdaPrimoPartB = s4
% vdaPrimoPartC = s4
% vdaPrimoPartD = s4
% vdaPrimoPartE = s4
% vdaPrimoPartF = s4
% vdaPrimoPartG = s4
% vdaSecondoPartA = s4
% vdaSecondoPartB = s4
% vdaSecondoPartC = s4
% vdaSecondoPartD = s4
% vdaSecondoPartE = s4
% vdaSecondoPartF = s4
% vdaSecondoPartG = s4


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
        }
        \score {
            \header {
                piece = \markup \markup-piece "Paeludium"
            }
            <<
                \new StaffGroup \with {
                    %instrumentName = "Viola d'amore"
                    instrumentName = \amoreScordatura <c g c' es' g' c''>1
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
                            \pageTurn
                        }
                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
            }
        }

        \score {
            \header {
                piece = \markup \markup-piece "Allamande"
            }
            <<
                \new StaffGroup {
                    <<
                        \new Staff
                        {
                            \time 4/4
                            \score-only
                            \vdaPrimoPartB
                        }
                        \new Staff
                        {
                            \time 4/4
                            \score-only
                            \vdaSecondoPartB
                        }
                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
            }
        }

        \score {
            \header {
                piece = \markup \markup-piece "Sarabande"
            }
            <<
                \new StaffGroup {
                    <<
                        \new Staff
                        {
                            \time 3/4
                            \score-only
                            \vdaPrimoPartC
                        }
                        \new Staff
                        {
                            \time 3/4
                            \score-only
                            \vdaSecondoPartC
                        }
                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
                %system-count = 4
            }
        }

        \score {
            \header {
                piece = \markup \markup-piece "Gigue"
            }
            <<
                \new StaffGroup {
                    <<
                        \new Staff
                        {
                            \time 4/4
                            \score-only
                            \vdaPrimoPartD
                        }
                        \new Staff
                        {
                            \time 4/4
                            \score-only
                            \vdaSecondoPartD
                            \pageTurn
                        }
                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
            }
        }


        \score {
            \header {
                piece = \markup \markup-piece "Aria"
            }
            <<
                \new StaffGroup {
                    <<
                        \new Staff
                        {
                            \time 4/4
                            \vdaPrimoPartE
                        }
                        \new Staff
                        {
                            \time 4/4
                            \vdaSecondoPartE
                        }
                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
                % system-count = 5
            }
        }

        \score {
            \header {
                piece = \markup \markup-piece "Trezza"
            }
            <<
                \new StaffGroup {
                    <<
                        \new Staff
                        {
                            \time 6/8
                            \vdaPrimoPartF
                        }
                        \new Staff
                        {
                            \time 6/8
                            \vdaSecondoPartF
                        }
                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
            }
        }

        \score {
            \header {
                piece = \markup \markup-piece "Arietta Variata"
            }
            <<
                \new StaffGroup {
                    <<
                        \new Staff
                        {
                            \time 3/4
                            \vdaPrimoPartG
                        }
                        \new Staff
                        {
                            \time 3/4
                            \vdaSecondoPartG
                        }

                    >>
                }
            >>
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
            }
        }
        \paper {
            page-breaking = #ly:page-turn-breaking
            blank-page-penalty = 1
        }
    }
}
