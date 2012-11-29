miditempo = #(ly:make-moment 100 4)

soprano = \relative c' {
  \key g \major
  \time 3/4
  \partial 4 d4
  % dennenboom, o
  g='8. g16 g4 a4 |
  % dennenboom, wat
  b8. b16 b4. b8 |
  % zijn  uw takken
  a8 b8 c4 fis,4 |
  % wonderschoon. Ik 
  a8. g16 g4 ~ g16 r16 d'8 |

  % heb u laatst in't
  d8. b16 e4. d8 |
  % bos zien staan, toen
  d8. c16 c4 ~ c16 r16 c8 |
  % had u nog geen
  c8. a16 d4. c8 |
  % lichtjes aan. O
  c8. b16 b8. r16 d,4 |

  % dennenboom, o
  g8. g16 g4 a4 |
  % dennenboom, wat
  b8. b16 b4. b8 |
  % zijn  uw takken
  a8 b8 c4 fis,4 |
  % wonderschoon
  a='8. g16 g4\fermata
  \bar "|."
}

sopranoVar = {
  \soprano
 %\alternative  {
 %  { % wonder-
 %    a='8. g16
 %    % Place Script \fermata inside TextScript 'fine'
 %    % -schoon
 %    \once \override Script #'script-priority = #-100
 %    \once \override TextScript  #'X-offset = #-0.8
 %    g8^\markup { \italic { "fine" } }\fermata r8 d4 
 %  }
 %  { 
 %    a'='4 g8 
 %    %\once \override TextScript #'X-align = ##LEFT
 %    r8^\markup { \center-align \italic { "D.C. al fine" } } \bar "||" }
 %}
}

alto = \relative c' {
  \key g \major
  \time 3/4
  % o
  % dennenboom, o
  % dennenboom, wat
  % zijn  uw takken
  % wonderschoon. Ik 
  \partial 4 d4
  d8. d16 d4 fis4 |
  g8. g16 g4. g8 |
  g8 g8 a4 a,8( b8) |
  c8. b16 b4 ~ b16 r16 g'8 |

  % heb u laatst in't
  % bos zien staan, toen
  % had u nog geen
  % lichtjes aan. O
  g8. g16 g4. g8 |
  g8. gis16 a4 ~ a16 r16 g8 |
  a8. g16 fis4. fis8 |
  fis8. d16 d8. r16 d4 |

  % dennenboom, o
  % dennenboom, wat
  % zijn  uw takken 
  % wonderschoon
  d8. e16 c4 d4 |
  g8. g16 g4. g8 |
  a8 g8 g4 d4 |
  d8. d16 d4\fermata
}


altoVar = \relative c' {
  \partial 4 r4 |
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
  %\once \override Slur #'script-priority = #100
  %\once \override Script #'script-priority = #-100
  d4)\fermata
}

tenor = \relative c' {
  \key g \major
  \time 3/4
  % o
  % dennenboom, o
  % dennenboom, wat
  % zijn  uw takken
  % wonderschoon. Ik 
  \partial 4 d4 |
  g,8. g16 g4 d'4 |
  d8. d16 d4. e8 |
  e8[ e8] e8([ g,8)] fis4 |
  fis8. fis16 g4 ~ g16 r16 b8

  % heb u laatst in't
  % bos zien staan, toen
  % had u nog geen
  % lichtjes aan. O
  b8. g16 c4. b8 |
  b8. e16 e4 ~ e16 r16 e8 |
  e8. e16 e4. a,8 |
  a8. b16 b8. r16 a4

  % dennenboom, o
  % dennenboom, wat
  % zijn  uw takken
  % wonderschoon. Ik 
  b8. c16 e4 c4 |
  b8. d16 d4. d8 |
  e8[ dis8] e8([ a,8)] a8([ b8)] |
  c8. d16 d4\fermata
}

tenorVar = \relative c' {
  \partial 4 r4
  d2( e4 |
  fis2. |
  e2 a,4 ~ |
  a4 b4 ~ b16) r16 r8 |

  r4 g2( |
  gis4 a4.) r8 |

  r4 fis2( ~ |
  fis4 g4 fis4 |
  e2 es4 |
  d4 d'2 |
  c2 a4 ~ |
  a4 
  % move fermata outside slur
  %\once \override Slur #'script-priority = #100
  %\once \override Script #'script-priority = #-100
  b4\fermata)
}

bass = \relative c {
  \key g \major
  \time 3/4
  % o
  % dennenboom, o
  % dennenboom, wat
  % zijn  uw takken
  % wonderschoon. Ik 
  \partial 4 d4 |
  b8. b16 b4 d4 |
  g8. g16 g4. e8 |
  c8 b8 a4 d4 |
  d8. g,16 g4 ~ g16 r16 g'8 |

  % heb u laatst in't
  % bos zien staan, toen
  % had u nog geen
  % lichtjes aan. O
  g8. g16 g4. g8 |
  g8. e16 e4 ~ e16 r16 a8 |
  fis8. d16 d4. d8 |
  d8. fis16 g8. r16 fis4 |

  % dennenboom, o
  % dennenboom, wat
  % zijn  uw takken
  % wonderschoon. Ik 
  e8. e16 e4 fis4 |
  g8. g16 g4. e8 |
  c8 b8 a4 d4 |
  g8. g,16 g4\fermata
}

verseOneDE = \lyricmode {
  O Tan -- nen -- baum, O Tan -- nen -- baum
}
verseOneNL = \lyricmode {
  O
  den -- nen -- boom, o
  den -- nen -- boom, wat
  zijn uw tak -- ken
  won -- der -- schoon. Ik 

  heb u laatst "in ’t"
  bos zien staan, toen
  had u nog geen
  licht -- jes aan. O

  den -- nen -- boom, o
  den -- nen -- boom, wat
  zijn uw tak -- ken
  won -- der -- schoon.
}
