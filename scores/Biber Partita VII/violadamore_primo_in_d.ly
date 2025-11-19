\version "2.24.0"
\include "../../include/sclib.ly"
\include "../../include/amore.ily"
\include "info.ily"

info-instrument = "Viola d'amore I"
info-project = #(project-url #{ \current-dir #})

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\include "src.violadamore_primo.ily"

#(set-global-staff-size 20)

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
            subtitle = \markup { \markup-subtitle "d-moll scordatura" }
            composer = \markup { \markup-composer \info-composer \info-composer-years }
            instrument = \info-instrument
        }
        \score {
            \header {
                piece = \markup \markup-piece "Paeludium"
            }

            <<
                \new Staff \with {
                    instrumentName = \amoreScordatura <c g c' es' g' c''>1
                } {
                    \time 3/4
                    \transpose c d {
                        \vdaPrimoPartA
                    }
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

            \new Staff {
                \time 4/4
                \transpose c d {
                    \vdaPrimoPartB
                }
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
                piece = \markup \markup-piece "Sarabande"
            }
            \new Staff {
                \time 3/4
                \transpose c d {
                    \vdaPrimoPartC
                }
            }
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
            \new Staff {
                \time 4/4
                \transpose c d {
                    \vdaPrimoPartD
                    \pageBreak
                }
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
                piece = \markup \markup-piece "Aria"
            }
            \new Staff {
                \time 4/4
                \transpose c d {
                    \vdaPrimoPartE
                }
            }
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
                system-count = 5
            }
        }

        \score {
            \header {
                piece = \markup \markup-piece "Trezza"
            }
            \new Staff {
                \time 6/8
                \transpose c d {
                    \vdaPrimoPartF
                }
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
                piece = \markup \markup-piece "Arietta Variata"
            }
            \new Staff {
                \time 3/4
                \transpose c d {
                    \vdaPrimoPartG
                }
            }
            \layout {
                \context {
                    \Score
                    \sp-spacing-eights
                }
            }
        }
        \paper {
            page-breaking = #ly:page-turn-breaking
            %blank-page-penalty = 1
        }
    }
}
