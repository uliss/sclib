\version "2.24.0"

% Font size for smaller items
#(define smF -3)
% Definition of the dash pattern
edDashDefinition = #'(( 0 1 0.5 1.25 ))

% Curves added by the editor are dashed
% We don't use the predefined commands to have more control over the dash definition
% and for draftMode to be able to color it
% Editorial Slur
ed-slur = {
  \once \override Slur.dash-definition = \edDashDefinition
  \once \override Slur.thickness = #1.7
  \once \override Slur.color = #(rgb-color 0.1 0.1 0.1)
}

% Editorial PhrasingSlur
edPhrasingSlur = {
  \once \override PhrasingSlur.dash-definition = \edDashDefinition
  \once \override PhrasingSlur.thickness = #1.7
}
 
% Editorial Tie
edTie = {
  \once \override Tie.dash-definition = \edDashDefinition
  \once \override Tie.thickness = #1.7
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Articulation
edArticulation =
#(define-music-function (mus)
   (ly:music?)
   #{
     \parenthesize #mus
   #})



%{
convert-ly (GNU LilyPond) 2.24.2  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
