% vim: set fileformat=dos:
\version "2.12.3"

\include "the_first_nowell-stainer-source.ly"

nummer = "9¾. "
varnummer = \markup {9\hcenter-in #0.1 \raise #0.7 \small\fraction 3 4 \hcenter-in #0.1 .} 

\header {
  title = \markup {\varnummer "The first Nowell"}
  arranger = "Arranged by John Stainer"
  tagline =  \markup { \center-column {
    "Versie 2012-06-18"
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
    >>
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
      \consists "Ambitus_engraver"
    }
  }
}
