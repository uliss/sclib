\version "2.18.0"

voiceoneI =  \relative c' {
  \override TupletBracket.bracket-visibility = ##f
  r16  c[ d e]  \tuplet 3/2 { f[ e d } \tuplet 3/2 { e d c] }  g'8[ c b^\prall c]
  d16[ g, a b]  \tuplet 3/2 { c[ b a } \tuplet 3/2 { b a g] }  d'8[ g f^\prall g]
  e16[ a g f] \tuplet 3/2 { e[ f g } \tuplet 3/2 { f g a] }  g[ f e d]  \tuplet 3/2 { c[ d e } \tuplet 3/2 {d e f] }
  e[ d c b] \tuplet 3/2 { a[ b c } \tuplet 3/2 { b c d] }  c[ b a g]  \tuplet 3/2 { fis[ g a } \tuplet 3/2 {g a b]}
  a8[ d,]  c'8.[^\mordent d16]  b[ a g fis]  \tuplet 3/2 { e[ fis g  } \tuplet 3/2 { fis g a] }
  \tuplet 3/2 {  g[ a b } \tuplet 3/2 { a b c] }  \tuplet 3/2 { b[ c d } \tuplet 3/2 { c d e]}   d[\staccatissimo b32( c d16) g]\staccatissimo  b,8[ a16(\trill g)]
  % 7
  g8 r r4 r16  g[ a b]  \tuplet 3/2 { c[ b a } \tuplet 3/2 { b a g] }
  fis8 r r4 r16  a[ b c]  \tuplet 3/2 { d[ c b } \tuplet 3/2 { c b a] }
  b8          r r4 r16  d[ c b] \tuplet 3/2 { a[ b c } \tuplet 3/2 { b c d] }
  c8          r r4 r16  e[ d c]  \tuplet 3/2 { b[ cis d } \tuplet 3/2 { cis d e] }
  d8[ cis d e]  f[ a, b cis]
  d[ fis, gis a]  b[ c] d4 ~
  d16[ e, fis gis]  \tuplet 3/2 { a[ gis fis} \tuplet 3/2 { gis fis  e]}  e'[ d] \tuplet 3/2 { c d e }  d[ c] \tuplet 3/2 { b c d }
  c[ a'] \tuplet 3/2 { gis a b}  a32[ g f e] \tuplet 3/2 { f16 e d}  gis,[ f' e d]  c8[ b16\trill a]
  % 15
  a16[ a' g f] \tuplet 3/2 { e[ f g} \tuplet 3/2 { f g a]} g2 ~ \trill
  g16[ e f g]  \tuplet 3/2 { a[ g f} \tuplet 3/2 { g f e] } f2 ~ \trill
  f16[ g f e]  \tuplet 3/2 { d[ e f} \tuplet 3/2 { e f g]} f2 ~ \trill
  f16[ d e f]  \tuplet 3/2 { g[ f e} \tuplet 3/2 { f e d]} e2 ~ \trill
  e16[ c d e]  \tuplet 3/2 { f[ e d} \tuplet 3/2 { e d c]} d[ e f g]
  \tuplet 3/2 { a[ g f} \tuplet 3/2 { g f e]}
  f[ g a b]  \tuplet 3/2 { c[ b a} \tuplet 3/2 { b a g]}  c8[ g]  e[( d16)\trill c]
  c[ bes a g]  \tuplet 3/2 { f[ g a } \tuplet 3/2 { g a bes]}  a[ b c e,]  d[ c' f, b]
  <c e,>1^\fermata \bar "|."
}

% }}}
% {{{ voicetwo

voicetwoI =  \relative c {
  \override TupletBracket.bracket-visibility = ##f
  \clef alto
  r2          r16   c[ d e]  \tuplet 3/2 { f[ e d } \tuplet 3/2 { e d c] }
  g'8 r8 r4 r16  g[ a b]  \tuplet 3/2 { c[ b a } \tuplet 3/2 { b a g] }
  c8[ b c d]  e[ g, a b]
  c[ e, fis g]  a[ b] c4 ~
  c16[ d, e fis] \tuplet 3/2 { g[ fis e } \tuplet 3/2 { fis e d]}  g8[ b c d]
  e[ fis] g[\prall e]  b8.[ c16]  d8[ d,]
  % 7
  r16  g[ a b]  \tuplet 3/2 { c[ b a } \tuplet 3/2 { b a g]}  d8[ g fis\prall g]
  a16[ d, e fis]  \tuplet 3/2 { g[ fis e } \tuplet 3/2 { fis e d]}  a'8[ d c\prall d]
  g,16[  g' f e]  \tuplet 3/2 { d[ e f } \tuplet 3/2 { e f g]}  f8[ e f d]
  e16[ a g f]  \tuplet 3/2 { e[ f g} \tuplet 3/2 { f g a]}  g8[ f g e]
  f16[ bes a g] \tuplet 3/2 { f[ g a } \tuplet 3/2 { g a bes]}  a[ g f e]  \tuplet 3/2 { d[ e f}  \tuplet 3/2 { e f g]}
  f[ e d c] \tuplet 3/2 { b[ c d } \tuplet 3/2 { c d e]}  d[ c b a]  \tuplet 3/2 { gis[ a b } \tuplet 3/2 {a b c]}
  b8[ e,]  d'8.[^\mordent e16]  c[ b a g]  \tuplet 3/2 { fis[ gis a } \tuplet 3/2 { gis a b]}
  \tuplet 3/2 { a[ b c } \tuplet 3/2 { b c d]}  \tuplet 3/2 { c[ d e} \tuplet 3/2 { d e f]}  e8[ a, e' e]
  % 15
  a8[ a,] r4 r16  e'16[ d c]  \tuplet 3/2 { b[ cis d } \tuplet 3/2 { cis d e]}
  d2 ~ \trill  d16[ a b c]  \tuplet 3/2 {  d[ c b} \tuplet 3/2 { c b a]}
  b2 ~ \trill b16[ d c b]   \tuplet 3/2 { a[ b c} \tuplet 3/2 { b c d] }
  c2 ~ \trill c16[ g a bes] \tuplet 3/2 { c[ bes a} \tuplet 3/2 { bes a g]}
  a8[ bes a g]  f[ d' c bes]
  a[ f' e d]    e16[ d, e f]  \tuplet 3/2 { g[ f e } \tuplet 3/2 { f e d]}
  e8[ c d e]  f16[ d e f]  g8[ g]
  <c, g'>1_\fermata
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
