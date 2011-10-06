% vim: set fileformat=dos:
\version "2.12.3"

\include "a_little_child-ep-source.ly"

\header {
  title = "A little child there is ybore"
  arranger = "E.P."
  tagline =  \markup { \center-column {
    "Versie 2011-10-05"
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
      %\new Voice = "vWomen" \women
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne

    \new Staff = "lower" <<
      \clef "bass"
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
      }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>
  \midi {
    \context {
      \Score tempWholesPerMinute = #(ly:make-moment 120 4 )
    }
  }
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
    % FIXME removed Ambitus as it clashes with multi-voice bits.
      \consists "Ambitus_engraver"
    }
  }
}
