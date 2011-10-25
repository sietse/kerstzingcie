% vim: set fileformat=dos:
\version "2.12.3"

\include "a_little_child-ep-source.ly"

\header {
  title = "A Little Child There Is Ybore"
  arranger = \markup { 
    German carol tune, 16\super{th} century, arr. E.P.
  }
  tagline =  \markup { \center-column {
    "Versie 2011-10-24"
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
    \new Lyrics \lyricsto "vSoprano" \verseTwo
    \new Lyrics \lyricsto "vSoprano" \verseThree
    \new Lyrics \lyricsto "vSoprano" \verseFour
    \new Lyrics \lyricsto "vSoprano" \verseFive
    \new Lyrics \lyricsto "vSoprano" \verseSix

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
    % FIXME removed Ambitus as it clashes with multi-voice bits.
      \consists "Ambitus_engraver"
    }
  }
}
