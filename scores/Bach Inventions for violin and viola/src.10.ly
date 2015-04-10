\version "2.18.0"

voiceoneX =  \relative c'' {
  \key g \major
  \time 9/8
  g8[ b d]  b[ g d']  b[ g g'] |                   % bar 1
  fis4\prall d8  a'[ fis d]  a'[ fis d] |               % bar 2
  g[ d b]  f'[ d b]  f'[ d b] |                    % bar 3
  e[ c a]  fis[ a c]  e[ d c] |                    % bar 4
  d[ b g]  e[ g b]  d[ c b] |                  % bar 5
  c[ a fis]  d[ fis a]  c[ b a] |                  % bar 6
  b[ c d]  e[ b g']  e[ b g'] |                % bar 7
  a,[ b cis]  d[ a fis']  e[ b g'] |               % bar 8
  g,4. ~  g8[ a g]  fis[ g e] |             % bar 9
  fis[ g fis]  e[ fis d]  a'[ b c] |               % bar 10
  b[ c b]  a[ b g]  e'[ fis g] |               % bar 11
  cis,[ d cis]  b[ cis a]  g'[ a b] |          % bar 12
  a[ g fis]  e[ fis d]  a[ d cis] |                % bar 13
  d4. r4 r8 r4 r8 |                     % bar 14
  a8[ cis e]  cis[ a e']  cis[ a g'] |             % bar 15
  fis4.\prall d r4 r8 |                     % bar 16
  g,8[ b d]  b[ g d']  b[ g f'] |                  % bar 17
  e[ c a]  a'[ e c]  a[ b c] |                 % bar 18
  d[ b g]  g'[ d b]  g[ a b] |                 % bar 19
  c2.\trill ~ c4. ~|                        % bar 20
  c2. ~ c4. |                           % bar 21
  \tieUp b2.\trill ~ b4. ~ |                    % bar 22
  b2. ~ b4. ~ |                         % bar 23
  b8[ e d]  c[ d b]  a[ b g] |                 % bar 24
  a[ c b]  a[ b g]  fis[ g e] |                    % bar 25
  fis4 d8 a'4 fis8 d'4 fis,8 |      % bar 26
  g8[ b d]  b[ g d']  b[ g g'] |                   % bar 27
  d[ fis a]  fis[ d a']  fis[ d c] |               % bar 28
  b[ a g]  fis[ g a]  d[ g fis] |                  % bar 29
  g[ fis e]  d[ c b]  a[ b c] |                    % bar 30
  b[ a g]  fis[ g a]  d,[ g fis] |             % bar 31
  g[ d b] g4. r4 r8 \bar "|."                  % bar 32
}


voicetwoX =  \relative c {
  \key g \major
  \time 9/8
  \clef alto
  R8 * 9 |                          % bar 1
  d8[ fis a]  fis[ d a']  fis[ d a'] |                            % bar 2
  b4\prall g8  d'[ b g]  d'[ b g] |                               % bar 3
  c[ e c]  a[ c a]  fis[ g a] |                                   % bar 4
  b[ d b]  g[ b g]  e[ fis g] |                                   % bar 5
  a[ c a]  fis[ a fis]  d[ e fis] |                               % bar 6
  g'4. ~  g8[ fis e]  d[ e cis] |                          % bar 7
  fis4. ~  fis8[ e d]  cis[ d b] |                        % bar 8
  e,[ fis g]  a[ e cis']  a[ e cis'] |                             % bar 9
  d4. ~  d8[ d, e]  fis[ e d] |                           % bar 10
  g4. ~  g8[ e fis]  g[ fis e] |                          % bar 11
  a4. ~  a8[ g fis]  e[ d cis] |                          % bar 12
  d[ e fis]  g[ a b] a4 a8 |                                    % bar 13
  d,[ fis a]  fis[ d a']  fis[ d d'] |                             % bar 14
  cis4.\prall a r4 r8 |                                             % bar 15
  d,8[ fis a]  fis[ d a']  fis[ d c'] |                           % bar 16
  b4.\prall g r4 r8 |                                               % bar 17
  c4. ~  c8[ d e]  fis,[ g a] |                            % bar 18
  b4. ~  b8[ c d]  e,[ fis g] |                           % bar 19
  a[ c e]  a[ e c]  a[ b c] |                                     % bar 20
  d,[ fis a]  d[ a fis]  d[ e fis] |                               % bar 21
  g[ b d]  g[ d b]  g[ a b] |                                     % bar 22
  e,[ g b]  e[ b g]  e[ fis g] |                                 % bar 23
  c,2.\trill ~ c4. ~ |                                          % bar 24
  c2. ~ c4. ~ |                                                 % bar 25
  c8[ d fis]  a[ fis d]  c'[ b a] |                                % bar 26
  b[ g b]  d[ b g]  d'[ b g] |                                    % bar 27
  fis[ d fis]  a[ fis d]  a'[ fis d] |                            % bar 28
  g[ a b]  a[ b c]  b[ c d] |                                     % bar 29
  e,4. ~ e4 e'8  fis[ e d] |                                     % bar 30
  g4 b,8  e[ d c] d4 d,8 |                       % bar 31
  g4. ~  g8[ b d] g4.  \bar "|."                                % bar 32
}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16,
2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31, 2.13.36, 2.13.39,
2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7,
2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25,
2.15.32, 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4,
2.17.5, 2.17.6, 2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20,
2.17.25, 2.17.27, 2.17.29, 2.17.97, 2.18.0
%}
