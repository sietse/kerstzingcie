% vim: set fileformat=dos:
\version "2.12.3"

nummer = "22. "

\include "o_denneboom-dewagtere-source.ly"

\header {
  title = \markup {\nummer "O Dennenboom"}
  composer = "Ernst Anschütz (1824)"
  arranger = "Arranged by Bernard Dewagtere"
  tagline =  \markup { \center-column {
    "Versie 2011-10-17"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

% Make everything a bit smaller. 
% The normal size of the music font is 20, but that gets things *really*
% jammed together.
#(set-global-staff-size 20)

\score {
  \new ChoirStaff <<
    \new Staff = "sSoprano" << 
      \clef "treble"
      \new Voice = "vSoprano" { \soprano }
    >>
    \new Lyrics \lyricsto "vSoprano" \verseOneNL

    \new Staff = "sAlto" << 
      \clef "treble"
      \new Voice = "vAlto" { \alto }
    >>
    \new Lyrics \lyricsto "vAlto" \verseOneNL

    \new Staff = "sTenor" << 
      \clef "treble_8"
      \new Voice = "vTenor" { \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOneNL

    \new Staff = "sBass" << 
      \clef "bass"
      \new Voice = "vBass" { \bass }
    >>
    \new Lyrics \lyricsto "vBass" \verseOneNL
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
    % space-saving tweaks
    \context { \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
