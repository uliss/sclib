\version "2.12.2"

voiceoneV =  \relative c' {
  \key ees \major
  \time 4/4

  r8  ees16[\prall d]  ees8[ f] g4 aes |      % bar 1
  r8  f16[\prall ees]  f8[ g] aes4 bes |      % bar 2
   g8[ c bes aes]  g16[ aes bes aes]  g8[ f] |        % bar 3
   ees[ g bes ees] ~  ees16[ c d ees]  f8[ ees] |           % bar 4
   d16[ ees d c]  d[ ees c d]  bes[ bes' a bes]  g[ a f g] |  % bar 5
   ees[ g f g]  ees[ f d ees]  c[ bes' a g]  a[ bes g a] |      % bar 6
   bes,[ bes' a g]  a[ bes g a]  f[ bes aes g]  f[ g ees f] |   % bar 7
   d[ g f ees]  d[ ees c d]  f,[ ees' d c]  d[ ees c d] |       % bar 8
   ees8[ bes16\prall aes]  bes8[ c] des4 ees |        % bar 9
  r8  c16[\prall bes]  c8[ d!] ees4 f |           % bar 10
  r8  d16[\prall c]  d8[ ees] f4 g |          % bar 11
   ees16[ f ees d]  ees[ f d ees]
     c[ c' bes c]  aes[ bes g aes] |                % bar 12
   f[ aes g aes]  f[ g ees f]  d[ c' b a]  b[ c a b] |      % bar 13
   c,[ c' bes! aes!]  bes[ c aes bes]  g[ c bes aes]  g[ aes f g] | % bar 14
   e[ aes g f]  e[ f d e]  g,[ f' e d]  e[ f d e] |         % bar 15
   f8[ f,16\prall g]  f8[ g] aes4 g |         % bar 16
  r8  g16[\prall f]  g8[ aes] bes4 c |            % bar 17
   aes8[ des c bes]  a16[ bes c bes]  a8[ g] |        % bar 18
   f[ a c ees] ~  ees16[ c des ees]  f8[ ees] |         % bar 19
   des16[ ees des c]  des[ ees c des]
     bes[ aes' g f]  g[ aes f g] |              % bar 20
   aes[ des, c bes]  c[ des bes c]  aes[ g' f e]  f[ g e f] |   % bar 21
   g[ c, bes aes]  bes[ c aes bes]  g[ f' e d]  e[ f d e] |     % bar 22
   f8[ aes,16\prall g]  aes8[ bes] c4 des |       % bar 23
  r8  bes16[\prall aes]  bes8[ c] des4 ees |      % bar 24
   c16[ aes' g aes]  f[ g ees f]
     des[ bes' aes bes]  c,[ des bes c] |               % bar 25
   aes[ c bes c]  aes[ bes g aes]  f[ ees' d c]  d[ ees c d] |  % bar 26
   ees8[ ees,16\prall d]  ees8[ f] g4 aes |       % bar 27
  r8  f16[\prall ees]  f8[ g] aes4 bes |      % bar 28
  \stemDown  g8[ c bes aes] \stemNeutral
     g16[ aes bes aes]  g8[ f] |                    % bar 29
   ees[ f' ees des]  c16[ des ees des]  c8[ bes] |      % bar 30
   aes[ c ees aes] ~  aes16[ f g aes]  bes8[ aes] |     % bar 31
     g8.[  f32 ees64 f]
    f4\trill ees2\fermata\bar "|."                % bar 32
}

voicetwoV =  \relative c {
  \key ees \major
  \time 4/4
  \clef alto

  ees'4\mordent ees, r16  ees'16[ d ees]  c[ d bes c] |
   aes[ c bes c]  aes[ bes g aes]  f[ ees' d c]  d[ ees c d] |
   ees,[ ees' d c]  d[ ees c d]  bes[ ees d c]  bes[ c aes bes] |
   ees[ c bes aes]  g[ aes f g]  c,[ bes' a g]  a[ bes g a] |
   bes8[ bes16\prall a]  bes8[ c] d4 ees |
  r8  c16[\prall bes]  c8[ d] ees4 f |
   d8[ g f ees]  d16[ ees f ees]  d8[ c] |
   bes[ d, f aes] ~  aes16[ f g aes]  bes8[ aes] |
   g16[ aes g f]  g[ aes f g]  ees[ ees' des ees]  c[ des bes c] |
   aes[ bes aes g]  aes[ bes g aes]  f[ f' ees f]  d[ ees c d] |
   bes[ c bes a]  bes[ c aes bes]  g[ aes f g]  ees[ f d ees] |
   c8[ c'16\prall b]  c8[ d] ees4 f |
   r8 d,16[\prall c]  d8[ ees] f4 g |
   ees8[ aes g f]  e16[ f g f]  e8[ d] |
   c[ e g bes] ~  bes16[ g aes bes]  c8[ bes] |
   aes16[ bes aes g]  aes[ bes g aes]  f[ f' ees f]  des[ ees c des] |
   bes[ des c bes]  bes[ c aes bes]  g[ f' e d]  e[ f d e] |
   f,[ f' ees! des!]  ees[ f des ees]  c[ f ees des]  c[ des bes c] |
   a[ des c bes]  a[ bes g a]  c,[ bes'  a g]  a[ bes g a] |
   bes8[ bes16\prall a]  bes8[ c] des4 ees |
  r8  aes,16[\prall g]  aes8[ bes] c4 des |
  r8  g,16[\prall f]  g8[ aes] bes4 c |
   f,16[ c'' bes c]  aes[ bes g aes]  f[ aes g aes]  f[ g ees f] |
   des[ f ees f]  des[ ees c des]  bes[ aes' g f]  g[ aes f g] |
   aes8[ ees16 d!]  ees8[ f] g4\mordent aes |
  r8  f16[ ees]  f8[ g] aes4\mordent bes |
   g16[ aes g f]  g[ aes f g]  ees[ ees' d ees]  c[ d bes c] |
   aes[ c bes c]  aes[ bes g aes]  f[ ees' d c]  d[ ees c d] |
   ees,[ ees' d c]  d[ ees c d]  bes[ ees d c]  bes[ c aes bes] |
   g[ c bes aes]  g[ aes f g]  ees[ aes g f]  ees[ f des ees] |
   c[ f ees des]  c[ des bes c]  f,[ ees' d c]  d[ ees c d] |
   ees8[ g, aes bes] c,2\fermata \bar "|."
}