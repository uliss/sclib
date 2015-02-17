\version "2.18.2"

% Font size for smaller items
#(define smF -3)
% Definition of the dash pattern
edDashDefinition = #'(( 0 1 0.5 1.25 ))

% Curves added by the editor are dashed
% We don't use the predefined commands to have more control over the dash definition
% and for draftMode to be able to color it
% Editorial Slur
ed-slur = {
  \once \override Slur #'dash-definition = \edDashDefinition
  \once \override Slur #'thickness = #1.7
  \once \override Slur #'color = #(rgb-color 0.1 0.1 0.1)
}

% Editorial PhrasingSlur
edPhrasingSlur = {
  \once \override PhrasingSlur #'dash-definition = \edDashDefinition
  \once \override PhrasingSlur #'thickness = #1.7
}
 
% Editorial Tie
edTie = {
  \once \override Tie #'dash-definition = \edDashDefinition
  \once \override Tie #'thickness = #1.7
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Articulation
edArticulation =
#(define-music-function (parser location mus)
   (ly:music?)
   #{
     \parenthesize #mus
   #})

