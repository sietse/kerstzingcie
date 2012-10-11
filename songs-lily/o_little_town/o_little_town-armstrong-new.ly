\version "2.12.3"

\header {
  title = "O Little Town of Bethlehem"
  arranger = \markup { \right-column {
    \line { English traditional melody }
    \line { arranged by }
    \line { R. VAUGHAN WILLIAMS (1872-1958) }
    \line { and (V. 4) THOMAS ARMSTRONG (\italic{b.} 1898) }
  }}
  tagline =  \markup { \center-column {
    "Versie 2011-09-07"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

soprano = \relative c' {
  \clef "treble"
  \key f \major
  \time 4/2
  \partial 2 c2 |
  f2 f2 f2 g2 |
  \phrasingSlurDashed
  a4(\( g4) a4( bes4)\) c2 \bar "||" a2 |
}

alto = \relative c' {
  \clef "treble"
  \time 4/2
  \partial 2 c2 |
  c2 d2 c2 d4( e4) |
}

tenor = \relative c' {
  \clef "bass"
  \key f \major
  \time 4/2
  \partial 2 g2 |
  a2 bes c bes |
}

bass = \relative c {
  \clef "bass"
  \time 4/2
  \partial 2 e2 |
  f2 bes a g |
}

verseOne = \lyricmode {
  O lit -- tle town of __ |
  Beth -- le -- hem, How |
}
verseTwo = \lyricmode {
  O mor -- ning stars, to -- ge -- _ ther
}
verseThree = \lyricmode {
  Jan
}

\score {
  \new ChoirStaff <<
    \new Staff = "Upper" <<
      \new Voice = "vSoprano" { 
        % Move sopranos' ambitus a bit to the right of the altos'.
        \override Ambitus #'X-offset = #2.0
        % voiceOne has its note stems pointing upwards
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" { \verseOne }
    \new Lyrics \lyricsto "vSoprano" { \verseTwo }
    \new Lyrics \lyricsto "vSoprano" { \verseThree }

    \new Staff = "lower" <<
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
    }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>

  \layout { 
    \context { \Voice
      \consists "Ambitus_engraver"
    }
    \context { \Staff 
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
    }
    \context { \Lyrics 
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
