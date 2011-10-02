% vim: set fileformat=dos:
\version "2.12.3"

\include "a_merry_christmas-anon1-source.ly"

\header {
  copyright = "1935 Oxford university press"
  %encodingdate = "2011-09-30"
  title = "A Merry Christmas"
  composer = "Arthur Warrell"
  tagline =  \markup { \center-column {
    "Versie 2011-10-02"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

%timeAndKey = {
%  \key g \major
%  \time 4/4
%}

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
    \new Lyrics \lyricsto "vBass" \verseOneBass
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
    \context {
      \RemoveEmptyStaffContext 
    }
    \context { \Score
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
}
