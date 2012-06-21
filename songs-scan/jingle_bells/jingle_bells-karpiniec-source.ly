% vim: set fileformat=dos:

\version "2.12.3"

soprano = \relative c'' {
  \key g \major
  \time 2/4

  \mark \markup { \italic \bold "Spiritoso" }
  % Jingle bells, jingle bells, jingle all the way!
  b8 b8 b4 |
  b8 b8 b4 |
  b8 d8 g,8. a16 |
  b2 |

  % Oh what fun it is to ride in a one-horse open sleigh!
  c8 c8 c8. c16 |
  c8 b8 b8 b16 b16 |
  b8 a8 a8 b8 |
  a4. r8

  % Jingle bells, jingle bells, jingle all the way!
  b8 b8 b4 |
  b8 b8 b4 |
  b8 d8 g,8. a16 |
  b2 |

  % Oh what fun it is to ride in a one-horse open sleigh!
  c8 c8 c8. c16 |
  c8 b8 b8 b16 b16 |
  d8 d8 c8 a8 |
  g4. r8

  % Dashing through the snow
  r4 r8 \parenthesize d='8 |
  d8 b'8 a8 g8 |
  d8
}

alto = \relative c'' {
  \key g \major
  \time 2/4

  g8 g8 g4 |
  g8 g8 g4 |
  g8 d8 e8. fis16 |
  g4 r4 |

  g8 g8 g8. g16 |
  g8 g8 g8 g16 g16 |
  g8 g8 g8 g8 |
  fis4. r8 |

  g8 g8 g4 |
  g8 g8 g4 |
  g8 d8 e8. fis16 |
  g4 r4 |

  % Oh what fun it | is to ride in a | one-horse open sleigh |
  g8 g8 g8. g16 |
  g8 g8 g8 g16 g16 |
  g8 g8 fis8 fis8 |
  g4. \parenthesize d8 |

  % Dashing through the snow
  d8 g8 a8 g8 |
  d4. d16\( d16\)
}

tenor = \relative c' {
  \key g \major
  \time 2/4

  d8 d8 d4 |
  d8 d8 d4 |
  d8 a8 b8. c16 |
  b4 r4 |

  e8
}

bass = \relative c' {
  \key g \major
  \time 2/4

  g8 fis8 e8( d8) |
  g8 fis8 e8( d8) |
  g8 fis8 e8. d16 |
  g8 fis8 e8( d8) |
  c8
}

refrain = \lyricmode {
  \markup{ \smaller \dynamic f  Jin } 
    -- gle bells, |
  jin -- gle bells, |
  jin -- gle all the |
  way!
  Oh what fun it | % 6
  is to ride in a | % 7
  one -- horse o -- pen |
  sleigh!
  Jin -- gle bells, |
  jin -- gle bells, |
  jin -- gle all the |
  way!
  Oh what fun it | % 6
  is to ride in a | % 7
  one -- horse o -- pen |
  sleigh!
}

refrainSkip = \repeat unfold 50 { s8 }

verseOneSop = \lyricmode {
  \skip 8 Da -- shing through the snow
}

verseOneRest = {
  \refrain
  \lyricmode {
    \skip 8 
    \markup{ \smaller \dynamic mf  Da } 
      -- shing through the snow
  }
}

verseTwoRest = \lyricmode {
}
verseThreeRest = \lyricmode {
}
verseFourRest = \lyricmode {
}

verseTwoSop = \lyricmode {
  A day or two a -- go
  I thought I’d take a ride
}

verseThreeSop = \lyricmode {
  A day or two a -- go,
  the sto -- ry I must tell
}

verseFourSop = \lyricmode {
  Now the ground is white
  Go it while you’re young
}

