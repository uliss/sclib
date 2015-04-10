\version "2.18.0"

voiceoneIX =
\relative c'' {

  \key f \minor \time 3/4
  c16[(  bes aes  g)]  aes8[ f] des'4 ~
  des16[ c(  bes  a)]  bes8[ g] e'4   ~
  e16[ f( g  aes)]  bes8[( g16  e)]  des!8[(  c)]
  % 4
  bes16[( aes g aes]  bes[ des c bes]  aes[ g f  e)]
  aes8[ f'] ~  f16[ g(   aes g  ]  f[ ees des  c)]
  bes8[ g'] ~  g16[ aes( bes aes]  g[ f   e    d)]
  c[( d e f]  g[ aes bes g]  f[ e f  e)]
  f8[ c] ~  c16[ bes aes g]  f[(  e) aes(  g)]
  % 9
  c16[   bes aes g]  aes8[ f] aes'4 ~
  aes16[ g(  f   e)]  f8[   d] b4 ~
  b16[ c d ees!]  f8[ d16 b]  aes!8[ g] ~
  % 12
  g16[ f( ees  d)]  ees8[ c] ees'4 ~
  ees16[ d( c  b)]  c8[   a] fis'4 ~
  fis16[ g( a  bes)]  c8[( a16  fis)]  ees!8[(  d)]
  %15
  b4.^\downprall b8 c4^\prallmordent ~ %  c8.[^\turn d16]
  c8.[ d16]
  d4.^\upprall   c8 c4 ~  c16[ d( ees d]  c[ bes! aes  g)]
  % 18
  f8[ d'] ~  d16[ ees( f ees]  d[ c b  a)]
  g[( a b c]  d[ ees f d]  c[ b c  b)]
  % 20
  g'4   ~  g16[ f ees d]
  c4    ~  c16[ bes a g]  a8[ f]
  ees'4 ~  ees16[ des c des]  ees[ ges f ees]  des[ c bes aes!]
  % 23
  g!8[ bes'] ~  bes16[ aes( g f]  ees[ des c  bes)]
  aes8[ c ees g] aes4 ~
  % 24
  aes16[ g f ees]  des[ bes aes'8] g4   ~
  g16[ f ees des]  c[   aes ges'8] f4   ~
  f16[ ees des c]  bes[ aes g aes] bes4 ~
  % 27
  bes16[ aes g f]  e[ f g aes]  bes[ c des bes]
  c[ bes aes g]  aes8[ f] des'4 ~
  des16[ c bes a]  bes8[ g] e'4 ~
  e16[ f g aes]  bes8[ g16 e]  des!8[ c]
  bes16[( aes g aes]  bes[ des c bes]  aes[ g f  e)]
  % c'8.[^\mordent\turn des16] g,4.^\downprall f8 f2.^\fermata
  c'8.[\mordent des16]
  g,4.^\downprall f8 f2.^\fermata
  \bar "|."
}

voicetwoIX = \relative c, {
  \clef alto
  \key f \minor \time 3/4
  f'8[   f'] ~  f16[ g   aes g  ]  f[ ees des  c]
  bes8[ g'] ~  g16[ aes! bes aes]  g[ f   e    d]
  c[ d e f]  g[ aes bes g]  f[ e f  e]
  % 4
  f4 r16  c,[ d e]  f[ g aes bes]
  c[     bes aes g]  aes8[ f]                des'4 ~
  des16[ c   bes a]  bes8[ g] e'4   ~
  e16[ f g aes]  bes8[ g16 e]  des!8[ c]
  bes16[ aes g  aes]  bes[ des c bes]  aes[ g f  e]
  % 9
  aes8[ f'   ] ~  f16[   g aes  g]  f[ ees d  c]
  b8[   aes'] ~  aes16[ g f  ees]  d[ c  b  a]
  g[ a b c]  d[ ees f d]  c[ b c b]
  % 12
  ees8[ c  ] ~  c16[   d ees d]  c[ bes a  g]
  fis8[ ees'] ~  ees16[ d c bes]  a[ g fis  e]
  d[ e fis g]  a[ bes c a]  g[ fis g  fis]
  % 15
  g[ a b   c]  d[ ees f   d]  ees[  c  d   e]
  f[ g aes f]  g[ d ees f]  g,[ f' ees d]
  ees[ f, ees  d]  ees8[ c] aes'4 ~
  % 18
  aes16[ g f  e]  f8[ d] b'4 ~
  b16[ c d ees]  f8[ d16 b]  aes!8[ g]
  % 20
  f16[ ees d ees]  f[ aes' g f]  ees[ d c bes]
  a8[ c'] ~  c16[ bes a g]  f[ ees des! c]
  % 22
  bes8[ des, f a] bes4 ~
  bes16[ aes! g f]  g8[ ees] des'4 ~
  des16[ c bes c]  des[ f ees des]  c[ bes aes g]
  % 24
  f8[ f']      ~  f16[   ees des c  ]  bes[ aes g bes]
  ees,8[ ees'] ~  ees16[ des c   bes]  aes[ ges f aes]
  des,8[ des'] ~  des16[ c  bes aes]  g[ f e  g]
  % 27
  c,4 ~  c16[ d e f]  g[ aes bes g]  aes[ bes c8] ~
  c16[ bes' aes g]  f[ es des  c]
  % 29
  bes[ c des8] ~  des16[ c bes aes]  g[ f e d]
  c[ d e f]  g[ aes bes g]  f[ e f e]
  f4 r16  c[ d e]  f[ e f g]
  aes[ g aes bes]  c8[ bes c c,]
  f2._\fermata
  \bar "|."
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
