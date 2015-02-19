\version "2.18.2"
\include "barcode.ly"

#(begin ; module import
   (use-modules (ice-9 popen))
   (use-modules (ice-9 rdelim)))

% constants
#(define git-hash (read-line (open-input-pipe "git log --pretty=format:'%h' -n 1")))
#(define git-repo "https://github.com/uliss/sclib")

#(define cc-logo    "../../include/icons/cc.eps")
#(define cc-nc-logo "../../include/icons/nc.eps")
#(define cc-sa-logo "../../include/icons/sa.eps")

#(define title-big-color (rgb-color 0.95 0.95 0.95))
#(define title-main-color (rgb-color 0 0 0))
#(define title-instrument-color (rgb-color 0.3 0.3 0.3))

% Ensure that the configuration variables are present
#(cond ((not (defined? 'info-version))
        (define info-version "0.0alpha")))
#(cond ((not (defined? 'info-composer-years))
        (define info-composer-years "")))
#(cond ((not (defined? 'info-catalog-number))
        (define info-catalog-number "????")))
#(cond ((not (defined? 'info-project))
        (define info-project "")))
#(cond ((not (defined? 'info-instrument))
        (define info-instrument "")))
#(cond ((not (defined? '-sp-parts))
        (define -sp-parts #f)))
#(cond ((not (defined? '-sp-score))
        (define -sp-score #f)))

#(define sp-version
   (lambda () info-version))

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
          \epsfile #X #2 \cc-logo
          \epsfile #X #2 \cc-nc-logo
          \epsfile #X #2 \cc-sa-logo
        }
        \column {
          { "Licensed under a Creative Commons 3.0" }
          \line { "source files: " \with-url \git-repo { \git-repo }}
        }
      }
    }
  }
}

#(define (is-score?) -sp-score)
#(define (is-parts?) -sp-parts)

#(define-markup-command (score-title-space layout props)
   ()
   (if (is-parts?)
       (interpret-markup layout props #{ \markup {} #})
       (interpret-markup layout props #{ \markup { \vspace #0.6 } #})
       ))

sp-title-page = \markup {
  {
    \column  {
      \right-column {
        \abs-fontsize #100
        \with-color #title-big-color
        { \fontsize #1 \info-composer }
        { \italic \fontsize #-3 \info-title }
      }
      \vspace #4
      \with-color #title-main-color
      \override #'(baseline-skip . 4)
      \left-column {
        {\abs-fontsize #30  \info-composer }
        { \draw-line #'(-60 . 0)  \vspace #1 }
        {\abs-fontsize #20 \sans \info-title \score-title-space }
        {\abs-fontsize #16  \italic \info-subtitle }
      }

      \vspace #22
      \barcode
      \barcode-qrcode #0.15 #(string-append
                              "composer:"    info-composer "\n"
                              "title: "      info-title "\n"
                              "instrument: " info-instrument "\n"
                              "catalog-num:" info-catalog-number "\n"
                              "version: "    info-version "\n"
                              "source: "     git-repo "\n"
                              "git-hash:"    git-hash "\n"
                              "build-time:"  (strftime "%x at %X" (localtime (current-time))) "\n"
                              "editor: Serj Poltavski\n"
                              "http://poltavski.ru\n\n"
                              "Send you fixes to serj.poltavski@gmail.com"
                              )
      \vspace #7

      % #29
      \fill-line {
        { \with-color #title-instrument-color \sans \bold \info-instrument }
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
             \left-column {
               \with-url #"http://lilypond.org" {
                 #(string-append "engraved by Serj Poltavski using lilypond v" (lilypond-version))
               }
               { #(string-append "edition version: " (sp-version)) }
             }
           }
           \null
         }
       }
     #}))

sp-custos-note =
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

tuplet-number-show = { \undo \omit TupletNumber }

tuplet-number-hide = { \omit TupletNumber }

tuplet-bracket-show = { \override TupletBracket.bracket-visibility = ##t }

tuplet-bracket-hide = { \override TupletBracket.bracket-visibility = ##f }

tuplet-show  = { \tuplet-number-show \tuplet-bracket-show }

tuplet-hide = { \tuplet-bracket-hide \tuplet-number-hide  }

tuplet-number-only = { \tuplet-number-show \tuplet-bracket-hide }

#(begin
  (define emus (make-music
                'SequentialMusic
                'elements
                (list)))
  (define scorebreak emus)
  (define scorepagebreak emus)
  (define partbreak emus)
  (define partpagebreak emus)

  (define sp-linebreak (make-music
                        'SequentialMusic
                        'elements
                        (list (make-music
                               'LineBreakEvent
                               'break-permission
                               'force))))

  (define sp-pagebreak (make-music
                        'SequentialMusic
                        'elements
                        (list (make-music
                               'EventChord
                               'elements
                               (list (make-music
                                      'LineBreakEvent
                                      'break-permission
                                      'force)
                                 (make-music
                                  'PageBreakEvent
                                  'break-permission
                                  'force))
                               'page-break-permission
                               'force
                               'line-break-permission
                               'force
                               'page-marker
                               #t))))
  )


#(define (make-parts- arg)
   (if arg (begin
            (set! partbreak sp-linebreak)
            (set! partpagebreak sp-pagebreak)
            (set! scorebreak emus)
            (set! scorepagebreak emus)
            (set! -sp-parts #t)
            (set! -sp-score #f)
            )
       (begin
        (set! partbreak emus)
        (set! partpagebreak emus)
        (set! scorebreak sp-linebreak)
        (set! scorepagebreak sp-pagebreak)
        (set! -sp-parts #f)
        (set! -sp-score #t)
        )
       )
   )

make-parts = #(define-scheme-function (parser location)()
                (make-parts- #t))

make-score = #(define-scheme-function (parser location)()
                #{
                  #(make-parts- #f)
                #}
                )

score-only = #(define-scheme-function (parser location music)(ly:music?)
                #{
                  \removeWithTag #'parts {
                    \killCues { #music }
                  }
                #}
                )

tag-quote = #(define-scheme-function (parser location name music)(string? ly:music?)
               #{ \addQuote #name { #music } #})

quote-with-clef = #(define-scheme-function (parser location instr clef mus)
                     (string? string? ly:music?)
                     #{
                       \tag-parts \new CueVoice { \set instrumentCueName = $instr }
                       \cueDuringWithClef $instr #UP #clef {
                         #mus
                       }
                     #})

tag-score = #(define-scheme-function (parser location music) (ly:music?)
               #{ \tag #'score { #music } #})

tag-parts = #(define-scheme-function (parser location music) (ly:music?)
               #{ \tag #'parts { #music } #})

par-natural = #(define-scheme-function (parser location)()
                 #{
                   ^\markup {
                     \override #'(baseline-skip . 2)
                     \center-column {
                       \tiny ?
                       \concat {
                         \tiny (
                         \pad-x #0.2 { \raise #0.5 \tiny \natural }
                         \tiny )
                       }
                     }
                   }
                 #}
                 )

par-sharp = #(define-scheme-function (parser location)()
               #{
                 ^\markup {
                   \override #'(baseline-skip . 2)
                   \center-column {
                     \tiny ?
                     \concat {
                       \tiny (
                       \pad-x #0.2 { \raise #0.5 \tiny \sharp }
                       \tiny )
                     }
                   }
                 }
               #}
               )

par-flat = #(define-scheme-function (parser location)()
              #{
                ^\markup {
                  \override #'(baseline-skip . 2)
                  \center-column {
                    \tiny ?
                    \concat {
                      \tiny (
                      \pad-x #0.2 { \raise #0.5 \tiny \flat }
                      \tiny )
                    }
                  }
                }
              #}
              )
