\version "2.18.2"

% Default  creative commons copyright
sp-header-copyright = \markup {
  \vspace #1.5
  \override #'(baseline-skip . 1)
  \abs-fontsize #6
  \sans
  \box {
    \pad-around #1 {
      \line {
        \lower #1.5 {
          \epsfile #X #2 #"../../include/icons/cc.eps"
          \epsfile #X #2 #"../../include/icons/nc.eps"
          \epsfile #X #2 #"../../include/icons/sa.eps"
        }
        \column {
          {
            "Licensed under a Creative Commons 3.0"
          }
          \line {
            "source files: " \with-url  #"https://github.com/uliss/sclib" {
              "https://github.com/uliss/sclib"
            }
          }
        }
      }
    }
  }
}

sp-title-page = \markup {
  {
    \column  {
      \right-column {
        \abs-fontsize #100
        \with-color #(rgb-color 0.95 0.95 0.95)
        { \fontsize #1 \info-composer }
        { \italic \fontsize #-3 \info-title }
      }
      \vspace #4
      \with-color #(rgb-color 0 0 0)
      \override #'(baseline-skip . 4)
      \left-column {
        {\abs-fontsize #30  \info-composer }
        { \draw-line #'(-60 . 0)  \vspace #1 }
        {\abs-fontsize #20 \sans \info-title }
        {\abs-fontsize #16  \italic \info-subtitle }
      }
      \vspace #29
      \fill-line {
        { \with-color #(rgb-color 0.3 0.3 0.3) \sans \bold \info-instrument }
        \null
        \sp-header-copyright
      }
    }
  }
}

% I need the "normal" title on the second page at the begin of the piece,
% For now, I have to abuse the scoreTitleMarkup and copy the original
% bookTitleMarkup from titling-init.ly, as the bookTitleMarkup
% cannot contain a page break!
originalBookTitleMarkup = \markup {
  \override #'(baseline-skip . 3.5)
  \column {
    \fill-line { \fromproperty #'header:dedication }
    \override #'(baseline-skip . 3.5)
    \column {
      \huge \larger \larger
      \fill-line {
        \larger \fromproperty #'header:title
      }
      \fill-line {
        \large \smaller \bold
        \larger \fromproperty #'header:subtitle
      }
      \fill-line {
        \smaller \bold
        \fromproperty #'header:subsubtitle
      }
      \fill-line {
        \fromproperty #'header:piece
        \fromproperty #'header:composer
      }
      \fill-line {
        \fromproperty #'header:meter
        \fromproperty #'header:arranger
      }
    }
  }
}

originalScoreTitleMarkup = \markup {
  \fill-line {
    \fontsize #4 \bold \fromproperty #'header:piece
    \null
  }
}

sp-spacing-halfs = \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
sp-spacing-quoters = \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
sp-spacing-eights = \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
sp-spacing-sixteens = \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)

smarkup-fine = \markup {\normalsize \fontsize #1 \smallCaps "Fine"}
smarkup-dc-fine = \markup {\italic "Da Capo al Fine"}
smarkup-trio = \markup {\normalsize \fontsize #1 \smallCaps {"Trio"} }

#(define-markup-command (markup-composer layout props composer years)
   (markup? markup?)
   (interpret-markup layout props
     #{
       \markup
       \override #'(baseline-skip . 2)
       \right-column {
         { \fontsize #1 #composer }
         { \italic \fontsize #-3 #years }
         \vspace #0.5
       }
     #}
     )
   )

#(define-markup-command (markup-piece layout props text) (markup?)
   "Markup of piece"
   (interpret-markup layout props
     #{
       \markup { \fontsize #1.5 \smallCaps { #text } }
     #}))

#(define-markup-command (markup-title layout props text) (markup?)
   "Markup of score title"
   (interpret-markup layout props
     #{
       \markup \normal-text { #text }
     #}))

#(define-markup-command (markup-subtitle layout props text) (markup?)
   "Markup of score subtitle"
   (interpret-markup layout props
     #{
       \markup \normal-text { #text }
     #}))

#(define-markup-command (markup-subsubtitle layout props text) (markup?)
   "Markup of score subsubtitle"
   (interpret-markup layout props
     #{
       \markup { #text }
     #}))

#(define-markup-command (markup-instrument layout props text) (markup?)
   "Markup of instrument"
   (interpret-markup layout props
     #{
       \markup \normal-text \italic { #text }
     #}))

#(define-markup-command (markup-tagline layout props) ()
   "Markup of tagline"
   (interpret-markup layout props
     #{
       \markup {
         \abs-fontsize #6
         \sans
         \fill-line {
           {
             \with-url #"http://lilypond.org" { 
               #(string-append "engraved by lilypond version " (lilypond-version))
             }
           }
           \null
         }
       }
     #}))

sp-custosNote =
#(define-music-function
  (parser location note)
  (ly:music?)
  #{
    \tweak NoteHead.stencil #ly:text-interface::print
    \tweak NoteHead.text
    \markup \musicglyph #"custodes.mensural.u0"
    \tweak Stem.stencil ##f
    #note
  #})

#(define-markup-command (sp-tutti layout props) ()
   "Style of piece in header"
   (interpret-markup layout props
     #{
       \markup \italic "Tutti"
     #}))

#(define-markup-command (sp-solo layout props) ()
   "Style of piece in header"
   (interpret-markup layout props
     #{
       \markup \italic "Solo"
     #}))

