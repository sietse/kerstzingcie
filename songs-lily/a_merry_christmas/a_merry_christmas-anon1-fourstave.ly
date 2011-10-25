% vim: set fileformat=dos:
\version "2.12.3"

\include "a_merry_christmas-anon1-source.ly"

\header {
  copyright = "1935 Oxford university press"
  %encodingdate = "2011-09-30"
  title = "A Merry Christmas"
  composer = "Arthur Warrell"
  tagline = \markup { \center-column {
    "Versie 2011-10-07"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

% Make everything a bit smaller. 
% The normal size of the music font is 20, but that gets things *really*
% jammed together.
#(set-global-staff-size 17)

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

  \layout { 
    %\set annotate-spacing = ##t
    %\context {
    %  \RemoveEmptyStaffContext 
    %}
    %\context { \Score
    %  \override VerticalAxisGroup #'remove-first = ##t
    %}
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
    \context { \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
