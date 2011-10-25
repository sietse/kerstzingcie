% vim: set fileformat=dos:
\version "2.12.3"

\include "joy_to_the-haendel-source.ly"

\header {
  title = "03. Joy to the World"
  poet = "Tekst Isaac Watts (1719)"
  composer = "Componist onbekend; blijkt niet Händel te zijn"
  arranger = "Op muziek gezet door Lowell Mason (1839)"
  tagline =  \markup { \center-column {
    "Versie 2011-10-19"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

% Make everything a bit smaller. 
% The normal size of the music font is 20, but that gets things *really*
% jammed together.
#(set-global-staff-size 19)

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne
    \new Lyrics \lyricsto "vSoprano" \verseTwo
    \new Lyrics \lyricsto "vSoprano" \verseThree
    \new Lyrics \lyricsto "vSoprano" \verseFour

    \new Staff = "lower" <<
      \clef "bass"
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
      }
      \new Voice = "vBass" { \voiceTwo \bass }
      \new Lyrics \lyricsto "vBass" \verseOneBass
      \new Lyrics \lyricsto "vBass" \verseTwoBass
      \new Lyrics \lyricsto "vBass" \verseThreeBass
      \new Lyrics \lyricsto "vBass" \verseFourBass
    >>
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
      \consists "Ambitus_engraver"
    }
  }
}
