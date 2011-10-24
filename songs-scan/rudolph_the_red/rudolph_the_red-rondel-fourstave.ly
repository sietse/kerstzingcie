% vim: set fileformat=dos:
\version "2.12.3"

\include "rudolph_the_red-rondel-source.ly"

\header {
  title = "Rudolph the Red-Nosed Reindeer"
  composer = "Jonny Marks" 
  arranger = "Arr. M. Rondel"
  tagline =  \markup { \center-column {
    "Versie 2011-09-30"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

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
    \new Staff = "sSoprano" << 
      \new Voice = "vSoprano" { \soprano }
    >>
    \new Lyrics \lyricsto "vSoprano" \verseOneSoprano

    \new Staff = "sAlto" << 
      \new Voice = "vAlto" { \alto }
    >>
    \new Lyrics \lyricsto "vAlto" \verseOneAlto

    \new Staff = "sTenor" << 
      \new Voice = "vTenor" { \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOneTenor

    \new Staff = "sBass" << 
      \new Voice = "vBass" { \bass }
    >>
    %\new Lyrics \lyricsto "vBass" \verseOne
  >>
  \midi {
    \context {
      \Score tempWholesPerMinute = #(ly:make-moment 120 4 )
    }
  }
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
  }
}
