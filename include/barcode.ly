\version "2.18.2"

#(cond ((null? barcode-ps)
        (set! barcode-ps "../../include/barcode.ps")))

barcode = #(markup #:line
             (#:with-dimensions (cons 0.0 0.1) (cons 0.0 0.1)
               (#:postscript (ly:gulp-file barcode-ps))))

% usage \markup {\barcode-qrcode #scale #"http://ya.ru" }
#(define-markup-command (barcode-qrcode layout props scale code) (number? string?)
   (let (
          (sscale (number->string scale))
          )
     (interpret-markup layout props
       #{
         \markup \postscript #(string-append sscale " " sscale " scale
0 -60 moveto (" code ") (version=12 format=any)
/qrcode /uk.co.terryburton.bwipp findresource exec
")
       #})))
