% vim: set fileformat=dos:
\version "2.12.3"

\include "es_ist_ein-anon1-source.ly"

nummer = "02b. "

\header {
  title = \markup {\nummer "Es ist ein Ros entsprungen"}
  composer = "Traditioneel kerstlied"
  tagline =  \markup { \center-column {
    "Versie 2011-11-15"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

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

    \new Lyrics \lyricsto "vSoprano" \verseOneDE
    \new Lyrics \lyricsto "vSoprano" \verseTwoDE
    \new Lyrics \lyricsto "vSoprano" \verseThreeDE
    \new Lyrics \lyricsto "vSoprano" \verseFourDE

    \new Staff = "lower" <<
      \clef "bass"
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
      }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
      \consists "Ambitus_engraver"
    }
  }
}
