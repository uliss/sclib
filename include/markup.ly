\version "2.18.2"

rit = #(define-scheme-function (parser location)()
         #{
           ^\markup { \italic "rit." }
         #}
         )

poco-rit = #(define-scheme-function (parser location)()
         #{
           ^\markup { \italic "poco rit." }
         #}
         )

accel = #(define-scheme-function (parser location)()
         #{
           ^\markup { \italic "accel." }
         #}
         )

arco = #(define-scheme-function (parser location)()
         #{
           ^\markup { "arco" }
         #}
         )

pizz = #(define-scheme-function (parser location)()
         #{
           ^\markup { "pizz" }
         #}
         )