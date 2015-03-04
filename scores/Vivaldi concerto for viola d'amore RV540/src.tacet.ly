\version "2.18.2"

% based on mutopia edition
% http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=310

% 2nd movement tacet. Common for viola and basso.
tacet =   {
  \key f \major
  \time 4/4
  \set Score.skipBars = ##t
  \partial 8 r8
  
  \omit MultiMeasureRestNumber
  \override MultiMeasureRest.expand-limit = #3
  \override MultiMeasureRest.minimum-length = #20 
  R1 * 10^\markup { \huge \bold \smallCaps "Tacet" }
  \bar "|."
}
