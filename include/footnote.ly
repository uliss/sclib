\version "2.18.2"

make-footnote = #(define-scheme-function (parser location note)(ly:music?)
                   #{
                     \once \override Score.FootnoteItem.annotation-line = ##f
                     \footnote #'(0.1 . 0.1) \markup { " Editorial" }
                     #note
                   #}
                   )