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
    \new Staff = "sSoprano" << 
      \clef "treble" \timeAndKey
      \new Voice = "vSoprano" { \soprano }
    >>
    \new Lyrics \lyricsto "vSoprano" \verseOne

    \new Staff = "sAlto" << 
      \clef "treble" \timeAndKey
      \new Voice = "vAlto" { \alto }
    >>
    \new Lyrics \lyricsto "vAlto" \verseOne

    \new Staff = "sTenor" << 
      \clef "treble_8" \timeAndKey
      \new Voice = "vTenor" { \tenor }
    >>

    \new Staff = "sBass" << 
      \clef "bass" \timeAndKey
      \new Voice = "vBass" { \bass }
    >>
    \new Lyrics \lyricsto "vBass" \verseOne
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
