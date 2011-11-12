% vim: set fileformat=dos:
\version "2.12.3"

\include "once_in_royal-mann-source.ly"

nummer = "07."

\header {
  title = \markup {\nummer "Once in Royal David’s City"}
  poet = "Words by C.F. Alexander"
  arranger = "Arr. A.H. Mann"
  tagline =  \markup { \center-column {
    "Versie 2011-11-12"
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

    \new Lyrics \lyricsto "vAlto" \verseOne
    \new Lyrics \lyricsto "vAlto" \verseOneRepeat
    \new Lyrics \lyricsto "vAlto" \verseTwo
    \new Lyrics \lyricsto "vAlto" \verseTwoRepeat
    \new Lyrics \lyricsto "vAlto" \verseFour
    \new Lyrics \lyricsto "vAlto" \verseFourRepeat
    \new Lyrics \lyricsto "vAlto" \verseFive
    \new Lyrics \lyricsto "vAlto" \verseFiveRepeat

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
    % Space-saving tweaks
    \context { \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
