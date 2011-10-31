% vim: set fileformat=dos:
\version "2.12.3"

\include "rudolph_the_red-rondel-source.ly"

nummer = "01."

\header {
  title = \markup { \nummer "Rudolph the Red-Nosed Reindeer" }
  composer = "Jonny Marks" 
  arranger = "Arr. M. Rondel"
  tagline =  \markup { \center-column {
    "Versie 2011-09-30"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

\paper {
  ragged-bottom = ##t
}


#(set-global-staff-size 18)

\score {
  \new ChoirStaff <<
    \new Staff = "sWomen" << 
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \altoClean }
    >>
    \new Lyrics \lyricsto "vSoprano" \verseOneSoprano
    %\new Lyrics \lyricsto "vAlto" \verseOneAlto

    \new Staff = "sTenor" << 
      \new Voice = "vTenor" { \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOneTenor

    \new Staff = "sBass" << 
      \new Voice = "vBass" { \bass }
    >>
    \new Lyrics \lyricsto "vBass" \verseOneBass
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice
      \consists "Ambitus_engraver"
    }
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
