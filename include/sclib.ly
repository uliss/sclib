\version "2.18.2"

% get current file path
current-file = #(define-scheme-function (parser location)()
                  (car (ly:input-file-line-char-column location)))

% get current dir
current-dir = #(define-scheme-function (parser location)()
                 (dirname (car (ly:input-file-line-char-column location))))

% get project url
#(define (project-url project-dir) 
   (string-append "https://github.com/uliss/sclib/tree/master/scores/" (basename project-dir)))

noPointAndClick = #(define-void-function
                    (parser location)
                    ()
                    (ly:set-option 'point-and-click #f))

#(ly:set-option 'paper-size "a4")
#(ly:set-option 'relative-includes #t)