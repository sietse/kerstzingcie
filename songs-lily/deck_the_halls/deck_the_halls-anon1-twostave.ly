% vim: set fileformat=dos:
\version "2.12.3"

\include "deck_the_halls-anon1-source.ly"

nummer = "17."

\header {
  title = \markup {\nummer "Deck the Halls"}
  arranger = "Welsh traditional"
  tagline =  \markup { \center-column {
    "Versie 2012-06-20"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \keepWithTag #'score \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vAlto" \verseOne
    \new Lyrics \lyricsto "vAlto" \verseTwo
    \new Lyrics \lyricsto "vAlto" \verseThree

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
