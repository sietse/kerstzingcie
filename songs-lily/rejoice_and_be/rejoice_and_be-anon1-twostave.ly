% vim: set fileformat=dos:
\version "2.12.3"

\include "rejoice_and_be-anon1-source.ly"

nummer = "4π."

\header {
  title = \markup { \nummer "Rejoice and be Merry" }
  composer = "Traditional English West Country"
  tagline =  \markup { \center-column {
    "Versie 2011-09-07"
    "Collegium Musicum Kerstzingcie 2011"
  } }
  poet = "Traditional Dorset"
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
      \new Voice = "vBass" { \bass }
    >>
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
      \consists "Ambitus_engraver"
    }
  }
}
