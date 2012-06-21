% vim: set fileformat=dos:
\version "2.12.3"

\include "ding_dong_merrily-wood-source.ly"

nummer = "08. "

\header {
  title = \markup {\nummer "" Ding, Dong, Merrily on High}
  composer = "16th-century French dance tune"
  arranger = "Arranged by Charles Wood"
  tagline =  \markup { \center-column {
    "Versie 2012-06-20"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

% Make everything a bit smaller. 
% The normal size of the music font is 20, but that gets things *really*
% jammed together.
#(set-global-staff-size 18)

\score {
  \new ChoirStaff <<
    \new Staff = "sSoprano" << 
      \new Voice = "vSoprano" { \soprano }
    >>
    \new Lyrics \lyricsto "vSoprano" \verseOne
    \new Lyrics \lyricsto "vSoprano" \verseTwoSoprano
    \new Lyrics \lyricsto "vSoprano" \verseThree

    \new Staff = "sAlto" << 
      \new Voice = "vAlto" { \alto }
    >>

    \new Staff = "sTenor" << 
      \new Voice = "vTenor" { \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOne
    \new Lyrics \lyricsto "vTenor" \verseTwoOther
    \new Lyrics \lyricsto "vTenor" \verseThree

    \new Staff = "sBass" << 
      \new Voice = "vBass" { \bass }
    >>
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
    % space-saving tweaks
    %{
    \context { \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    %}
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
