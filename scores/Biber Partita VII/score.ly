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

% vdaPrimoPartA = s4
% vdaPrimoPartB = s4
% vdaPrimoPartC = s4
% vdaPrimoPartD = s4
% vdaPrimoPartE = s4
% vdaPrimoPartF = s4
%vdaPrimoPartG = s4
% vdaSecondoPartA = s4
% vdaSecondoPartB = s4
% vdaSecondoPartC = s4
% vdaSecondoPartD = s4
% vdaSecondoPartE = s4
% vdaSecondoPartF = s4
%vdaSecondoPartG = s4
% bassPartA = s4
% bassPartB = s4
% bassPartC = s4
% bassPartD = s4
% bassPartE = s4
% bassPartF = s4
%bassPartG = s4
% figuredBassPartA = s4
% figuresBassPartB = s4
% figuresBassPartC = s4
% figuresBassPartD = s4
%figuresBassPartE = s4


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
                            \time 4/4
                            \score-only
                            \vdaPrimoPartB
                        }
                        \new Staff \with {
                            % instrumentName = "II."
                        }
                        {
                            \time 4/4
                            \score-only
                            \vdaSecondoPartB
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \clef bass
                    <<
                        \bassPartB
                        \figuresBassPartB
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
                \new StaffGroup \with {
                    % instrumentName = "Viola d'amore"
                }{
                    <<
                        \new Staff \with {
                            % instrumentName = "I."
                        }
                        {
                            \time 3/4
                            \vdaPrimoPartC
                        }
                        \new Staff \with {
                            % instrumentName = "II."
                        }
                        {
                            \time 3/4
                            \vdaSecondoPartC
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \clef bass
                    <<
                        \bassPartC
                        \figuresBassPartC
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
                piece = \markup \markup-piece "Gigue"
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
                            \time 4/4
                            \vdaPrimoPartD
                        }
                        \new Staff \with {
                            % instrumentName = "II."
                        }
                        {
                            \time 4/4
                            \vdaSecondoPartD
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \clef bass
                    <<
                        \bassPartD
                        \figuresBassPartD
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
                \new StaffGroup \with {
                    % instrumentName = "Viola d'amore"
                }{
                    <<
                        \new Staff \with {
                            % instrumentName = "I."
                        }
                        {
                            \time 4/4
                            \vdaPrimoPartE
                        }
                        \new Staff \with {
                            % instrumentName = "II."
                        }
                        {
                            \time 4/4
                            \vdaSecondoPartE
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \clef bass
                    <<
                        \bassPartE
                        \figuresBassPartE
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
                piece = \markup \markup-piece "Trezza"
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
                            \time 6/8
                            \vdaPrimoPartF
                        }
                        \new Staff \with {
                            % instrumentName = "II."
                        }
                        {
                            \time 6/8
                            \vdaSecondoPartF
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \clef bass
                    <<
                        \bassPartF
                        %\figuresBassPartF
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
                \new StaffGroup \with {
                    % instrumentName = "Viola d'amore"
                }{
                    <<
                        \new Staff \with {
                            % instrumentName = "I."
                        }
                        {
                            \time 3/4
                            \vdaPrimoPartG
                        }
                        \new Staff \with {
                            % instrumentName = "II."
                        }
                        {
                            \time 3/4
                            \vdaSecondoPartG
                        }
                    >>
                }
                \new Staff \with {
                    instrumentName = "Basso"
                }
                {
                    \clef bass
                    <<
                        \bassPartG
                        %\figuresBassPartF
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
    }
}
