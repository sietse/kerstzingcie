% vim: set fileformat=dos:
\version "2.12.3"

\include "o_tannenbaum-dewagtere-source.ly"

nummer = "22."

\header {
  title = \markup { \nummer "O Dennenboom" }
  composer = "Ernst Anschütz (1824)"
  arranger = "Arr. Bernard Dewagtere"
  tagline =  \markup { \center-column {
    "Versie 2011-10-17"
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
