% vim: set fileformat=dos:
\version "2.12.3"

\include "es_ist_ein-anon1-source.ly"

nummer = "02. "

\header {
  title = \markup { \nummer "Er is een roos ontloken" }
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

    \new Lyrics \lyricsto "vSoprano" \verseOneNL
    \new Lyrics \lyricsto "vSoprano" \verseTwoNL
    \new Lyrics \lyricsto "vSoprano" \verseThreeNL

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
