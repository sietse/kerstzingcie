\version "2.12.3"

\header {
  title = 
  arranger = 
  tagline = "Kerstzingcie 2011"
}

timeAndKey = {
  \key g \major
  \time 4/4
}

soprano = \relative c' {
}

alto = \relative c' {
}

tenor = \relative c' {
}

bass = \relative c {
}

verseOne = \lyricmode {
}

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \timeAndKey
      \new Voice = "vSoprano" { \voiceOne \soprano }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne

    \new Staff = "upper" <<
      \clef "treble"
      \timeAndKey
      \new Voice = "vTenor" { \voiceOne \tenor }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>
  \midi {
    \context {
      \Score tempWholesPerMinute = #(ly:make-moment 100 4 )
    }
  }
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
  }
}
