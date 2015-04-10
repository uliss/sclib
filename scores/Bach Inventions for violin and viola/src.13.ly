\version "2.12.2"

voiceoneXIII =  \relative c' {
  r16  e[ a c]  b[ e, b' d]  c8[ e gis, e'] |           % bar 1
   a,16[ e a c]  b[ e, b' d]  c8[ a] r4 |               % bar 2
  r16  e'16[ c e]  a,[ c e, g]  f8[ a d f] ~ |          % bar 3
   f16[ d b d]  g,[ b d, f]  e8[ g c e] ~ |         % bar 4
   e16[ c a c]  f,8[ d'] ~  d16[ b g b]  e,8[ c'] ~ |       % bar 5
   c16[ a f a]  d,8[ b'] c r r4 |                   % bar 6
  r16  g[ c e]  d[ g, d' f]  e8[ g b, g'] |         % bar 7
   c,16[ g c e]  d[ g, d' f]  e8[ c g' e] |         % bar 8
   c'16[ a e a]  c,[ e a, c]  d8[ fis a c] |            % bar 9
   b16[ g d g]  b,[ d g, b]  c8[ e g b] |               % bar 10
   a16[ fis dis fis]  b,[ dis fis, a]  g8[ g'] ~  g16[ e c e] | % bar 11
   a8[ fis] ~  fis16[ d b d]  g,8[ e'] ~  e16[ c a c] |     % bar 12
   fis,16[ g' fis e]  dis[ fis b, dis] e8 r r4 |            % bar 13
  r16  g[ bes g]  e[ g cis, e]  g[ e cis e] a, r r8 |       % bar 14
  r16  f'[ aes f]  d[ f b, d]  f[ d b d] g, r r8 |          % bar 15
  r16  e'[ g e]  c[ e a, c]  dis[ c a c] fis, r r8  |       % bar 16
  r16  d'[ f d]  b[ d gis, b]  d[ b gis b] e, r r8 |        % bar 17
  r16  e[ a c]  b[ e, b' d]  c8[ a gis e] |         % bar 18
   a16[ c e c]  a[ c fis, a]  c[ a fis a]  dis,[ c' b a] |      % bar 19
   gis[ b d b]  gis[ b d, f]  gis[ f d f]  b,[ f' e d] |        % bar 20
   c[ e a e]  c[ e a, c]  dis[ c a c]  fis[ c b a] |      % bar 21
   gis8[ b' gis e] r16  e[ a c]  b[ e, b' d]  |         % bar 22
   c[ a c e]  d[ b d f]  e[ c e g]  f[ e d c] |         % bar 23
   b[ c d e]  f[ d gis d]  b'[ d, c a']  f[ d b d] |        % bar 24
   gis,[ b c a]  e[ a b gis]  a[ e c e] a,4^\fermata \bar "|."  % bar 25
}

voicetwoXIII =  \relative c {
  \clef alto
   a'8 a4 gis8  a16[ e a c]  b[ e, b' d] |               % bar 1
   c8[ a gis e]  a16[ e a c]  b[ e, b' d] |                        % bar 2
   c8[ a c a]  d16[ a' f a]  d,[ f a, c] |                          % bar 3
   b8[ d, g b] ~  b16[ g' e g]  c,[ e g, b] |                        % bar 4
   a8[ c]  d16[ f b, d]  g,8[ b]  c16[ e a, c] |                    % bar 5
   f,8[ d]  g16[ g' f g]  c,[ g c e]  d[ g, d' f] |                % bar 6
   e8[ c b g]  c16[ g c e]  d[ g, d' f] |                          % bar 7
   e8[ c] r4 r16  g'[ e g]  c,[ e g, b] |                          % bar 8
   a8[ c e g]  fis16[ a d, fis]  a,[ d fis, a] |                   % bar 9
   g8[ b d fis]  e16[ g c, e]  g,[ c e, g] |                       % bar 10
   fis8[ a b dis] r16  e[ c e]  a,[ c e g] |                       % bar 11
   fis[ d b d]  g,[ b d fis]  e[ c a c]  fis,[ a c8] ~ |            % bar 12
   c16[ b c a]  b8[ b]  e16[ e' b g]  e[ b g b] |                  % bar 13
   e,8[ e' g bes] cis,8 r r16  g'[ f e] |                        % bar 14
   d8[ d f aes] b, r r16  f'[ e d] |                            % bar 15
   c8[ c e fis] a, r r16  e'[ dis cis] |                        % bar 16
   b8[ b d f] gis, r r16  d'[ c b] |                            % bar 17
   c8[ a gis e]  a16[ e a c]  b[ e, b' d] |                        % bar 18
   c[ e a e]  c[ e a, c]  fis,[ a c a]  fis[ a dis, fis] |          % bar 19
   e8[ gis b gis]  e[ b' gis e] |                                  % bar 20
   a[ c e c]  a[ c] dis, r |                                      % bar 21
  r16  b'[ gis e]  d[ b' gis d]  c8[ e' gis,! e'] |                 % bar 22
   a,[ fis' b, gis']  c,[ a' d, bes'] |                           % bar 23
   gis[ f d b]  gis[ a d, e] |                                    % bar 24
   f[ dis e e'] a,2^\fermata \bar "|."                          % bar 25
}