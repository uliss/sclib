\version "2.24.0"

% get current file path
current-file = #(define-scheme-function ()()
                  (car (ly:input-file-line-char-column (*location*))))

% get current dir
current-dir = #(define-scheme-function ()()
                 (dirname (car (ly:input-file-line-char-column (*location*)))))

% get project url
#(define (project-url project-dir) 
   (string-append "https://github.com/uliss/sclib/tree/master/scores/" (basename project-dir)))

noPointAndClick = #(define-void-function
                    ()
                    ()
                    (ly:set-option 'point-and-click #f))

#(ly:set-option 'paper-size "a4")
#(ly:set-option 'relative-includes #t)

\include "vars.ly"

%{
convert-ly (GNU LilyPond) 2.24.2  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
