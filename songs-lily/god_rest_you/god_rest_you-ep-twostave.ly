% vim: set fileformat=dos:
\version "2.12.3"

\include "god_rest_you-ep-source.ly"

nummer = "05."

\header {
  title = \markup {\nummer "God Rest You Merry, Gentlemen"}
  composer = "English traditional carol tune"
  arranger = "Arranged by E.P."
  tagline =  \markup { \center-column {
    "Versie 2011-11-02"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

% Make everything a bit smaller. (Normal staff size is 20)
#(set-global-staff-size 18)

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
    \new Lyrics \lyricsto "vSoprano" \verseSeven

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
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-1.0 . 1.0)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(1.0 . 1.0)
    }
  }
}
