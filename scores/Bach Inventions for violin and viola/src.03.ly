\version "2.18.0"

voiceoneIII =  \relative c' {
  \key d \major
  \partial 8
  \time 3/8

  d16[ e] |                            % bar 1
  fis16[( e g fis e  d)] |                 % bar 2
  a'[( g fis e fis  d)] |                  % bar 3
  a'8[ b cis16\mordent d] |                    % bar 4
  cis8[\prall
  \grace b  a cis16 d] |                        % bar 5
  e[( cis fis d cis  b)] |                   % bar 6
  e[( cis d b a  gis)] |                       % bar 7
  e'[( cis fis d cis  b)] |                    % bar 8
  e[( cis d b a  gis)] |                       % bar 9
  cis[( b d cis b  a)] |                       % bar 10
  fis'8[ gis, a] ~ |                       % bar 11
  a16[ b]  b8.[\trill a16] |                    % bar 12
  a4 r8 |                           % bar 13
  r e' a ~ |                            % bar 14
  a16[ b,( cis dis e  fis)] |                  % bar 15
  g[( fis a g fis  e)] |                       % bar 16
  b'8[ b,] r |                         % bar 17
  r  fis[ b] ~ |                        % bar 18
  b16[ ais( b cis d e]) |                        % bar 19
  fis[ e g fis e  d] |                       % bar 20
  e[ d fis e d  cis] |                       % bar 21
  d[ cis e d cis  b] |                       % bar 22
  \stemDown  cis8[ ais\downprall b] ~ \stemNeutral |        % bar 23
  b16[ cis]  cis8.[\trill b16] ~ |             % bar 24
  b16[ fis( gis ais b  cis)] |                 % bar 25
  d[( cis e d cis  b)] |                       % bar 26
  g'4.\trill ~ |                          % bar 27
  g4. ~ |                           % bar 28
  g16[ e,( fis gis a  b)] |                    % bar 29
  cis[( b d cis b  a)] |                       % bar 30
  fis'4.\trill ~ |                            % bar 31
  fis ~ |                           % bar 32
  fis16[ b,( e d cis  b)] |                    % bar 33
  cis[( b d cis b  a)] |                 % bar 34
  gis8[\prall e] a16[ b] |                   % bar 35
  cis[( b d cis b  a)] |                       % bar 36
  fis'8.[ gis,16 a gis] |                  % bar 37
  a[ d] b8.\trill[ a16] |                      % bar 38
  a8.[ cis16 d e] |                        % bar 39
  fis,8[ g a\turn] |                       % bar 40
  b[ cis\turn d] ~ |                       % bar 41
  d16[ cis( e d cis  d)] |                 % bar 42
  e[( d cis b a  g)] |                     % bar 43
  fis[( e g fis e  d)] |                       % bar 44
  a'[( g fis e fis  d)] |                  % bar 45
  a'8[ b cis16\mordent d] |                    % bar 46
  cis8[( a d]) |                         % bar 47
  d[ d, d'] |                          % bar 48
  d[ d, d'] |                          % bar 49
  d[ d, d'] |                          % bar 50
  d[ d,] d'16[ e] |                      % bar 51
  fis[( e g fis e  d)] |                 % bar 52
  b'8[ cis, d] ~ |                     % bar 53
  d16[ e]  e8.[\trill d16] |                    % bar 54
  d8[ d, g] ~ |                            % bar 55
  g16[ a,( b cis d  e)] |                  % bar 56
  fis[( e g fis e  d)] |                       % bar 57
  b'8.[ cis,16( d cis]) |                        % bar 58
  d[ g]  e8.[\trill d16] |                       % bar 59
  d4 \bar "|."                 % bar 60

}

voicetwoIII =  \relative c {
  \key d \major
  \time 3/8
  \clef alto
  \partial 8

  r8 |
  R8 * 3 |
  r8 r  d16[ e] |
  fis[( e g fis e  d)] |
  a'[( g fis e fis  d)] |
  a'8[ a' a,] |
  a[ a' a,] |
  a[ a' a,] |
  a[ a' a,] |
  a[ b cis] |
  d16[( cis e d cis  b)] |
  cis[ d] e8[ e,] |
  a16[( e fis gis a  b)] |
  cis[( b32 cis d16 cis b  a)] |
  e'8[ e,] r |
  r  b'[ e] ~ |
  e16[ fis,( gis ais b cis]) |
  d[( cis32 d e16 d cis b]) |
  fis'8[ fis,  e']
  d[ b'16 ais b8] |
  cis,[ ais'16 gis ais8] |
  b16[ a! g! fis e  d] |
  e[ d fis e d  cis] |
  d[ e] fis8[ fis,] |
  b[ fis' d] |
  b4 r8 |
  r16  b[( cis dis e  fis)] |
  g[( fis a g fis  e)] |
  a4.\trill ~ |
  a ~ |
  a16[ a,( b cis d  e)] |
  fis[( e g fis e  d) ] |
  gis8.[ e16( fis gis]) |
  a([ gis fis e d  fis)] |
  e[( d cis b cis  a)] |
  a'8[ fis cis] |
  d16[( cis e d cis  b)] |
  cis[ d e8 e,] |
  a16[( cis, d e fis  g)] |
  a[( g b a g  fis)] |
  g[( fis a g fis  e)] |
  fis[( e g fis e  d)] |
  a'8[ a'] r |
  R8 * 3 |
  r8 r  d,,16[ e] |
  fis([ e g fis e  d)] |
  a'[( g fis e fis  d)] |
  a'[( fis b g fis  e)] |
  a[( fis g e d  cis)] |
  a''[( fis b g fis  e)] |
  a[( fis g e d  cis)] |
  d8[ e fis] |
  g16[( fis a g fis  e)] |
  fis[ g a8 a,] |
  b16[( a c b a  g)] |
  d4. ~ |
  d16[ cis'!( b a g  fis)] |
  g[( fis a g fis  e)] |
  fis[ g] a4 |
  d,4 \bar "|."
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
