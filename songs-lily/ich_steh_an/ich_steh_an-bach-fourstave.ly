% vim: set fileformat=dos:
\version "2.12.3"

\include "ich_steh_an-bach-source.ly"

nummer = "06."

\header {
  title = \markup { 
    \center-column { 
    \line {\nummer "Choral"}
    "Ich steh’ an deine Krippen hier"
  } }
  composer = "Johann Sebastian Bach"
  tagline =  \markup { \center-column {
    "Versie 2011-11-18"
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
    \new Lyrics \lyricsto "vSoprano" \verseTwo

    \new Staff = "sAlto" << 
      \new Voice = "vAlto" { \keepWithTag #'fourstave \alto }
    >>
    \new Lyrics \lyricsto "vAlto" \verseOne
    \new Lyrics \lyricsto "vAlto" \verseTwo

    \new Staff = "sTenor" << 
      \new Voice = "vTenor" { \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOne
    \new Lyrics \lyricsto "vTenor" \verseTwo

    \new Staff = "sBass" << 
      \new Voice = "vBass" { \bass }
    >>
    \new Lyrics \lyricsto "vBass" \verseOne
    \new Lyrics \lyricsto "vBass" \verseTwo
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
    % space-saving tweaks
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
