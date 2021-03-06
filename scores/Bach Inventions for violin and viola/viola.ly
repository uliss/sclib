\version "2.18.0"

\include "../../include/sclib.ly"
\include "info.ly"

info-instrument = "Viola"

\include "../../include/common.ly"
\include "../../include/paper.ly"
\include "../../include/housestyle.ly"

\include "src.01.ly"
\include "src.02.ly"
\include "src.03.ly"
\include "src.04.ly"
\include "src.05.ly"
\include "src.06.ly"
\include "src.07.ly"
\include "src.08.ly"
\include "src.09.ly"
\include "src.10.ly"
\include "src.11.ly"
\include "src.12.ly"
\include "src.13.ly"
\include "src.14.ly"
\include "src.15.ly"

\book {
  % title page
  \bookpart {
    \sp-title-page
    \pageBreak
  }


  \bookpart {
    \header {
      title = \markup { \markup-title \info-title }
      subtitle = \markup { \markup-subtitle \info-subtitle }
      composer = \markup { \markup-composer \info-composer \info-composer-years }
    }

    \score {
      \new Staff { \voicetwoI }
 
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.1"
        %opus = "BWV 772"
      }
    }
    \score {
      \new Staff { \voicetwoII }
 
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.2"
        %opus = "BWV 773"
      }
    }
    
    \score {
      \new Staff { \voicetwoIII }
      \header {
        piece = \markup \markup-piece "Invention No.3"
        %opus = "BWV 774"
      }
    }
  }

  \bookpart {    
    \score {
      \new Staff { \voicetwoIV }
      \layout {
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.4"
        %opus = "BWV 775"
      }
    }
    
    \score {
      \new Staff { \voicetwoV }
      
      \layout{
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
      \header {
        %breakbefore = ##t
        piece = \markup \markup-piece "Invention No.5"
        %opus = "BWV 776"
      }
    }
    
    \score {
      \new Staff { \voiceTwoVI }
      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.6"
        %opus = "BWV 777"
      }
    }
  }

  \bookpart {
    
    
    \score {
      \new Staff { \voicetwoVII }
      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.7"
        %opus = "BWV 778"
      }
    }
    \score {
      \new Staff  { \voicetwoVIII }
      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.8"
        %opus = "BWV 779"
      }
    }
    
    \score {
      \new Staff { \voicetwoIX  }
      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.9"
        %opus = "BWV 780"
      }
    }
  }
  
  \bookpart {  
    \score {
      \new Staff { \voicetwoX }
      \layout{
        \context {
          \Score
          \sp-spacing-quoters
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.10"
        %opus = "BWV 781"
      }
    }
    
    \score {
      \new Staff { \voicetwoXI }

      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.11"
        %opus = "BWV 782"
      }
    }
    
    \score {
      \new Staff { \voicetwoXII }

      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.12"
        %opus = "BWV 783"
      }
    }
  }
  \bookpart {
    
    \score {
      \new Staff { \voicetwoXIII }
      
      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }

      \header {
        piece = \markup \markup-piece "Invention No.13"
        %opus = "BWV 784"
      }
    }
    
    \score {
      \new Staff { \voicetwoXIV }

      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }
      \header {
        piece = \markup \markup-piece "Invention No.14"
        %opus = "BWV 785"
      }
    }
 
    \score {
      \new Staff {
        \voicetwoXV
      }
      
      \layout{
        \context {
          \Score
          \sp-spacing-eights
        }
      }

      \header {
        piece = \markup \markup-piece "Invention No.15"
        %opus = "BWV 786"
      }
    }
  }
}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16,
2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31, 2.13.36, 2.13.39,
2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7,
2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25,
2.15.32, 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4,
2.17.5, 2.17.6, 2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20,
2.17.25, 2.17.27, 2.17.29, 2.17.97, 2.18.0
%}
