% vim: set fileformat=dos:
\version "2.12.3"

\header {
  title = "O Tannenbaum"
  composer = "Ernst Anschütz (1824)"
  arranger = "Bernard Dewagtere"
  tagline = "Kerstzingcie 2011"
}

timeAndKey = {
  \key g \major
  \time 3/4
}

soprano = \relative c' {
  \partial 4 d4
  \repeat unfold 2 {
    % dennenboom, o
    g='8. g16 g4 a4 |
    % dennenboom, wat
    b8. b16 b4. b8 |
    % heb je grote
    a8 b8 c4 fis,4 |
    % takken. Ik 
    a4 g4 ~ g16 r16 d'8 |

    % heb je laatst in't
    d8. b16 e4. d8 |
    % bos zien staan, toen
    d8. c16 c4 ~ c16 r16 c8 |
    % had je nog geen
    c8. a16 d4. c8 |
    % lampjes aan. O
    c8. b16 b8. r16 d,4 |

    % dennenboom, o
    g8. g16 g4 a4 |
    % dennenboom, wat
    b8. b16 b4. b8 |
    % heb je grote
    a8 b8 c4 fis,4 |
  }
  \alternative  {
    { % takken
      a='4
      % Place Script \fermata inside TextScript 'fine'
      \once \override Script #'script-priority = #-100
      \once \override TextScript  #'X-offset = #-0.8
      g8^\markup { \italic { "fine" } }\fermata r8 d4 
    }
    { 
      a'='4 g8 
      %\once \override TextScript #'X-align = ##LEFT
      r8^\markup { \center-align \italic { "D.C. al fine" } } \bar "||" }
  }
}

alto = \relative c' {
  % o
  % dennenboom, o
  % dennenboom, wat
  % heb je grote
  % takken. Ik 
  \partial 4 d4
  d8. d16 d4 fis4 |
  g8. g16 g4. g8 |
  g8 g8 a4 a,8( b8) |
  c4 b4 ~ b16 r16 g'8 |

  % heb je laatst in't
  % bos zien staan, toen
  % had je nog geen
  % lampjes aan. O
  g8. g16 g4. g8 |
  g8. gis16 a4 ~ a16 r16 g8 |
  a8. g16 fis4. fis8 |
  fis8. d16 d8. r16 d4 |

  % dennenboom, o
  % dennenboom, wat
  % heb je grote
  d8. e16 c4 d4 |
  g8. g16 g4. g8 |
  a8 g8 g4 d4 |
  d4 d4\fermata r4 |

  d2(  fis4 ~ |
  fis2 f4
  e4 es2 |
  d2 ~ d16) r16 r8 |

  r4 c8( c'8 b4 ~ |
  b4 e,4.) r8 |
  
  r4 b8( b'8 a4 ~ |
  a4 d,4 c4 |
  b2 c4 |
  d4 g4 fis4 |
  e4 es2 |
  d4 ~ 
  % FIXME move fermata outside slur
  \once \override Slur #'script-priority = #100
  \once \override Script #'script-priority = #-100
  d8.)\fermata r16 d4
}

tenor = \relative c' {
}

bass = \relative c {
}

verseOneDE = \lyricmode {
  O Tan -- nen -- baum, O Tan -- nen -- baum
}
verseOneNL = \lyricmode {
  O
  den -- nen -- boom, o
  den -- nen -- boom, wat
  heb je gro -- te __
  tak -- ken. Ik 

  heb je laatst in’t
  bos zien staan, toen
  had je nog geen
  lamp -- jes aan. O

  den -- nen -- boom, o
  den -- nen -- boom, wat
  heb je gro -- te
  tak -- ken.
}

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \timeAndKey
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOneNL

    \new Staff = "upper" <<
      \clef "treble"
      \timeAndKey
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
      }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>
  \midi {
    \context {
      \Score tempWholesPerMinute = #(ly:make-moment 120 4 )
    }
  }
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
      \consists "Ambitus_engraver"
    }
  }
}
