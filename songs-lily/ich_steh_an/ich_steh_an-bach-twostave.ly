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
    "Versie 2011-11-16"
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
      \new Voice = "vAlto" { \voiceTwo \keepWithTag #'twostave \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne
    \new Lyrics \lyricsto "vSoprano" \verseTwo

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
