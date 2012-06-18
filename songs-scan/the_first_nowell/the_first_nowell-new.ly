\version "2.12.3"

\header {
  title = "Stille  Nacht"
  composer = "Franz Gruber (1787-1863)"
  arranger = "Arr. Jo Ivens"
  tagline =  \markup { \center-column {
    "Versie 2011-09-07"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

globalUpper = {
}

globalLower = {
}

soprano = \relative c' {
  \partial 4 fis8( e8) |
  d4.( e8) fis8( g8) |
}
alto = \relative c' {
  \partial 4 d4 |
  cis2 d4 |
}
tenor = \relative c' {
  \partial 4 a8( g8) |
  fis2 d'4
}
bass = \relative c {
  \partial 4 d4 |
  d2 b4 |
}

verseOne = \lyricmode {
  \set stanza = "1. "
  The __ 
  first __ No -- 
}
verseTwo = \lyricmode {
  \set stanza = "2. "
  They 
  look -- ed __
}
verseThree = \lyricmode {
  \set stanza = "3. "
  And 
  by __ the __
}
verseFour = \lyricmode {
  \set stanza = "4. "
  Then 
  let __ us __
}

\score {
  % This bit determines the structure of the layout. A choirstaff
  % containing two staves, two voices per stave, verses in the middle.
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \globalUpper
      \new Voice = "vSoprano" { \voiceOne \soprano }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" { \verseOne }
    \new Lyrics \lyricsto "vSoprano" { \verseTwo }
    \new Lyrics \lyricsto "vSoprano" { \verseThree }
    \new Staff = "lower" <<
      \globalLower
      \new Voice = "vTenor" { \voiceOne \tenor }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>

  \midi { 
    \context { 
        \Score tempWholesPerMinute = #(ly:make-moment 50 4 ) 
    } 
  }
  \layout { 
    % We can haz ambitus to display pitch range?
    % Also? No need to pretend a staff is bigger than it is. We want to
    % fit everything on one page, after all.
    \context { \Staff 
      \consists "Ambitus_engraver"
    %  \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
    }
    % More height-saving tweaks
    %\context { \Lyrics 
    %  \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    %  \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    %}
  }
}
