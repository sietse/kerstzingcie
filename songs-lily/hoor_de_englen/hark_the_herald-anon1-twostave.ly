% vim: set fileformat=dos:
\version "2.12.3"

\include "hark_the_herald-anon1-source.ly"

nummer = "19."

\header {
  title = \markup {\nummer "Hark! the herald-angels sing"}
  poet = \markup { \left-column { 
    "Words by Charles Wesley (1707-1788)"
    "and others" 
  } }
  composer = "J.L.F. Mendelssohn Bartholdy (1809–1847)"
  tagline =  \markup { \center-column {
    "Versie 2011-11-20"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

#(set-global-staff-size 18)

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.5
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOneEN
    \new Lyrics \lyricsto "vSoprano" \verseTwoEN
    \new Lyrics \lyricsto "vSoprano" \verseThreeEN

    \new Staff = "lower" <<
      \clef "bass"
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #3.0
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
