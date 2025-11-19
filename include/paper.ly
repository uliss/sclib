\version "2.24.0"

#(define (get-info-project) info-project)
#(define (not-last-page layout props arg)
   (if (not (book-last-page? layout props))
       (interpret-markup layout props arg)
       empty-stencil))

#(define (not-last-page layout props arg)
   (if (and (chain-assoc-get 'page:is-bookpart-last-page props #f)
            (chain-assoc-get 'page:is-last-bookpart props #f))
       empty-stencil
       (interpret-markup layout props arg)))

\paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1.4\cm
  right-margin = 1.4\cm
  % annotate-spacing = ##t
  top-system-spacing  = #'((basic-distance . 10))
  top-markup-spacing = #'((basic-distance . 5))
  last-bottom-spacing = #'((basic-distance . 10) (minimum-distance . 8))
  markup-system-spacing = #'((basic-distance . 10))
  markup-markup-spacing = #'((basic-distance . 10))
  ragged-last-bottom = ##f
  evenFooterMarkup = \markup {
    \unless \on-first-page \unless \on-last-page  {
      \fill-line {
        \null
        {
          \sans
          \abs-fontsize #'6
          \with-url #(get-info-project)
          #(string-append "SP" info-catalog-number)
        }
        \null
      }
    }
    \if \on-last-page {
      \fill-line {
        \markup-tagline
        {
          \sans
          \abs-fontsize #'6
          \with-url #(get-info-project)
          #(string-append "SP" info-catalog-number)
        }
        \null
      }
    }
  }
  oddFooterMarkup = \markup {
    \unless \on-first-page \unless \on-last-page {
      \fill-line {
        \null
        {
          \sans
          \abs-fontsize #'6
          \with-url #(get-info-project)
          #(string-append "SP" info-catalog-number)
        }
        \null
      }
    }
    \if \on-last-page {
      \fill-line {
        \markup-tagline
        {
          \sans
          \abs-fontsize #'6
          \with-url #(get-info-project)
          #(string-append "SP" info-catalog-number)
        }
        \null
      }
    }
  }
}

%{
convert-ly (GNU LilyPond) 2.24.2  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
