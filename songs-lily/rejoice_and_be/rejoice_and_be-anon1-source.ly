\version "2.12.3"

soprano = \relative c' {
  \key g \major
  \time 3/4
  \partial 4 d4 |
  \autoBeamOff
  g fis g |
  a b c |
  d c b |
  a2 
  \bar "" \break

  b4 |
  c b c |
  d d c |
  b4. c8 a4 |
  g2
  \bar "" \break
  
  d'4 |
  d c b |
  c b c |
  d c b |
  a2 
  \bar "" \break

  d,4 |
  g b c8[ e8] |
  d4 d c |
  b4. c8 a4 |
  g2 \bar "|."
}

alto = \relative c' {
  \partial 4 d8 c |
  b4 a b8 e |
  d4 g fis |
  g a g |
  g fis g |
  g fis e |
  d fis e |
  g4. a8 fis4 |
  g2 
  
  b8 a |
  b4 a g |
  g4. fis8 e4 | 
  g fis g |
  fis( d) d8 c |
  b4 d e8 fis |
  g8[ fis8] e8[ d8] e8[ fis8] |
  g4. a8 fis4 |
  g2 \bar "|."
}

tenor = \relative c {
  \clef "bass"
  \time 3/4
  \partial 4 fis4 |
  g d g |
  fis e d8 c |
  b4 d g | 
  d2 g8 fis |
  e4 d c |
  b b c |
  d4. d8 d4 |
  g2
  
  g4 |
  e fis g |
  e d c |
  b d g |
  d2 fis4 |
  g8[ fis] e[ d] c4 |
  b b c |
  d4. d8 d4 |
  g2 \bar "|."
}

bass = \tenor

verseOne = \lyricmode {
  Re4 -- joice and be mer -- ry in songs and in mirth!
  O praise our Re -- deem -- er, all mor -- tals on earth!
  For this is the birth -- day of Je -- sus our King,
  Who brought us sal4 -- va4 -- tion;4 his prai -- ses we’ll sing!
}

verseTwo = \lyricmode {
  A4 hea -- ven -- ly vi -- sion ap -- peared in the sky,
  Vast num -- bers of an -- gels the shep -- herds did spy,
  Pro -- clai -- ming the birth -- day of Je -- sus our King,
  Who brought us sal4 -- va4 -- tion;4 his prai -- ses we’ll sing.
}

verseThree = \lyricmode {
  Like4 -- wise a bright star in the sky did ap -- pear,
  Which led the wise men from the east to draw near;
  They found the Mes -- si -- ah, sweet Je -- sus our King,
  Who brought us sal4 -- va4 -- tion;4 his prai -- ses we’ll sing.
}

verseFour = \lyricmode {
  And4 when they were come, they their trea -- sures un -- fold,
  And un -- to him of -- fered myrrh, in -- cense, and gold.
  So bles -- sed for e -- ver be Je -- sus our King,
  Who brought us sal4 -- va4 -- tion;4 his prai -- ses we’ll sing.
}
