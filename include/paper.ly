\version "2.18.2"

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
  last-bottom-spacing = #'((basic-distance . 10))
  markup-system-spacing = #'((basic-distance . 10))
  markup-markup-spacing = #'((basic-distance . 10))
  ragged-last-bottom = ##f
  evenFooterMarkup = \markup {
    \on-the-fly \not-first-page \on-the-fly \not-last-page {
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
    \on-the-fly \last-page {
      \fromproperty #'header:tagline
      {
        \sans
        \abs-fontsize #'6
        \with-url #(get-info-project)
        #(string-append "SP" info-catalog-number)
      }
      \null
    }
  }
  oddFooterMarkup = \markup {
    \on-the-fly \not-first-page \on-the-fly \not-last-page {
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
    \on-the-fly \last-page {
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