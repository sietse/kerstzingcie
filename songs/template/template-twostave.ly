% vim: set fileformat=dos:
\version "2.12.3"

\include "template-source.ly"

\header {
  title = 
  arranger = 
  tagline =  \markup { \center-column {
    "Versie 2011-09-07"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

%timeAndKey = {
%  \key g \major
%  \time 4/4
%}
%
%soprano = \relative c' {
%}
%
%alto = \relative c' {
%}
%
%tenor = \relative c' {
%}
%
%bass = \relative c {
%}
%
%verseOne = \lyricmode {
%}

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \timeAndKey
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne

    \new Staff = "upper" <<
      \clef "treble"
      \timeAndKey
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
      }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>
  \midi {
    \context {
      \Score tempWholesPerMinute = #(ly:make-moment 120 4 )
    }
  }
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
      \consists "Ambitus_engraver"
    }
  }
}
