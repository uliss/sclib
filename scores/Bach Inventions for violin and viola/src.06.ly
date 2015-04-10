\version "2.18.0"

global =  { \key e \major \time 3/8 }

voiceOneVI =
\relative c'' {
  \global

  \repeat volta 2 {
    r16  e8[ dis d16] ~  d[ cis8 b a16] ~
    a16[ gis8 fis gis32 a]  gis16[ b32 a b16 gis32 fis gis16 e32 dis]
    % 5
    e8[ fis gis]  a[ b cis]  dis[ e16 dis cis b]  e8[ e,] r
    % 9
    r16  gis'8[ e cis16] ~  cis[ e32 dis e16 cis ais fis] ~
    fis[ fis'8 dis b16] ~  b[   dis32 cis dis16 b gis e] ~
    e16[ e'8 cis ais16] ~  ais[ gis'8 fis e16] ~  e[ dis8 cis b16]
    % 16
    ais16[ e32 dis e16 ais32 gis ais16 b32 ais]
    b16[ dis, cis b' cis, ais']
    b8 r16  b[ dis fis]
    b8 r16  b[ fis dis]
    b[ fis dis b] r8
  }

  \break
  \repeat volta 2 {
    % 21
    b8[ cis dis]  e[ fis gis]  ais[ b16 ais gis fis]  b8[ b,] r
    r16  b''8[ ais a16] ~  a[ gis8 fis e16] ~  e[ dis8 cis dis32 e]
    dis16[ fis32 e fis16 dis32 cis dis16 b32 ais]
    % 29
    b16[   dis32  cis   dis16  gis32   fisis gis16   cis,32 b   ]
    cis16[ e32    dis   e16    ais32   gis   ais16   dis,32 cis ]
    dis16[ gis32  fisis gis16  b32     ais   b16     dis,32 cisis]
    dis16[ ais'32 gis   ais16  fisis32 eis   fisis16 dis32  cisis]
    % 33
    dis16[ a'!8  gis fis16] ~  fis[ e32   dis e16   cis32 bis  cis16  e32   dis]
    e16[   gis8 fis e16]   ~  e[   dis32 cis dis16 b32   ais  b16    cis32 b  ]
    cis16[ e8   dis cis16] ~  cis[ b32   ais b16   gis32 fisis gis16 a32   gis]
    % 39
    a16[ cis32    b   cis16   a32   gis a16   e'32 dis]
    e16[ fisis,32 eis fisis16 ais32 gis ais16 b,32 ais]
    b16[ gis' e cis ais fisis']  gis[ dis b gis] r8
    % 43
    e'8[ fis gis]  a[ b cis]  dis![ e16 dis cis b]  e8.[ b32 a b16 gis32 fis]
    gis16[ e'8 dis d16] ~  d[ cis8 b a16] ~  a[ gis8 fis gis32 a]
    gis16[ b32 a b16 gis32 fis gis16 e32 dis]
    % 50
    e8[   fis a]  b[ dis fis]  dis,[ e gis]  a[ cis e]
    cis,[ fis a]  b[ cis dis]  e[    cis a]
    % 57
    fis'4.\trill ~  fis16[ e dis cis b a]
    gis16[ e32   dis e16   gis32 fis gis16 b32 a  ]
    b16[   gis32 fis gis16 b32   a   b16   e32 dis]
    e16[ b gis e] r8
  }
}

voiceTwoVI =
\relative c {
  \global
  \clef alto

  \repeat volta 2 {
    e8[ fis gis]  a[ b cis]  dis![ e16 dis cis b]  e8[ e,] r
    % 5
    r16  e'8[ dis d16] ~  d[ cis8 b a16] ~
    a16[ gis8 fis gis32 a]  gis16[ b32 a b16 gis32 fis gis16 e32 dis]
    % 9
    e8[ cis' e,]  fis[ ais cis]  dis,[ b' dis,]  e[ gis b]
    cis,[ cis' e,]  fis[ gis ais]  b[ e, gis]
    % 16
    fis16[ cis' ais cis e, cis']  dis,8[ e fis]
    b16[  b'32  ais b16   fis32 e   fis16 dis32 cis]
    dis16[ fis32 e   fis16 dis32 cis dis16 b'32 ais]
    b4 b,8
  }

  \repeat volta 2 {
    % 21
    r16  b8[ ais a16] ~  a[ gis8 fis e16] ~  e[ dis8 cis dis32 e]
    dis16[ fis32 e fis16 dis32 cis dis16 b'32 ais]
    b8[ cis dis]  e[ fis gis]  ais[ b16 ais gis fis]  b8[ b,] r
    % 29
    gis[ b dis]      fisis,[ ais dis]  gis,[ b dis]   dis,[ dis' cis]
    bis[ cis dis]     gis,[ cis b!]     ais[ b cis]    fis,[ b dis   ]
    fisis,[ gis! ais]  dis,[ gis b ]    cis, r cis' ~  cis[ ais fisis]
    gis[ cis, dis]   gis r16  gis[ gis' fis] ~
    % 43
    fis16[ e8 dis d16] ~  d[ cis8 b a16] ~  a[ gis8 fis gis32 a]
    gis16[ b32 a b16 gis32 fis gis16 e32 dis]
    % 47
    e8[ fis gis]  a[ b cis]  dis![ e16 dis cis b]  e8.[ b32 a b16 gis32 fis]
    % 51
    gis16[ cis8 a fis16] ~  fis[ a'32 gis a16 fis dis b] ~
    b[ b8 gis e16] ~  e[ gis'32 fis gis16 e cis a] ~
    a16[ a8 fis dis16] ~  dis[ cis'8 b a16] ~  a[ gis8 fis e16]
    % 57
    dis16[ a'32 gis a16 dis,32 cis dis16 gis32 fis]  gis8[ a b]
    e, r16  e''[ b gis]  e[ b' gis e b gis] e'4 e,8
    \override Staff.RehearsalMark.direction = #-1
  }
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
