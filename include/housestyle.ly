\layout {
  \context {
    \Score
    % old editions often have beams almost totally parallel to the notes.
    %\override Beam #'damping = #0.6
    % I dislike it, but many modern editions have quite flat beams.
    %\override Beam #'damping = #2.5
    extraNatural = ##f
    %extraNatural = ##t
    % heavier appearance
    %\override StaffSymbol #'thickness = #1.2
    %\override Beam #'beam-thickness = #0.55
    \accidentalStyle modern
  }
}