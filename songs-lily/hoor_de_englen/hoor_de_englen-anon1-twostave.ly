% vim: set fileformat=dos:
\version "2.12.3"

\include "hoor_de_englen-anon1-source.ly"

nummer = "19."

\header {
  title = \markup {\nummer "Hoor de eng’len zingen d’eer"}
  composer = "J.L.F. Mendelssohn Bartholdy (1809–1847)"
  tagline =  \markup { \center-column {
    "Versie 2011-11-18"
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

    \new Lyrics \lyricsto "vSoprano" \verseOneNL
    \new Lyrics \lyricsto "vSoprano" \verseTwoNL
    \new Lyrics \lyricsto "vSoprano" \verseThreeNL

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