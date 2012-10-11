% vim: set fileformat=dos:

\version "2.12.3"

mbreak = {\bar "||" \break}

sopmain = {
  \tag #'partial { \partial 2 c='2 | }
  f2 f2 f2 g2 |
  \phrasingSlurDashed
  a4(\( g4) a4( bes4)\) c2 \bar "||" a2 |
  bes2 a4( f4) g2 g2 |
  f1.
}
soprano = \relative c' {
  \time 4/2
  \key f \major
  % o little town of Bethlehem, how
  % still we see thee
  % lie.
  \keepWithTag #'partial { \sopmain }
  \mbreak

  % Above thy deep and
  % dreamless sleep the
  % silent stars go
  % by
  \keepWithTag #'partial { \sopmain }
  \mbreak

  % Yet in thy dark streets
  f4( a4) |
  c2. d4 c4( bes4) a4( g4) |
  % shineth
  f4( g4 a4 bes4) c2 \bar "||"
  % The everlasting
  c,2  |
  f2 a2 g2 f2
  % light
  c1
  \mbreak

  % The 
  % hopes and fears of 
  % all the years are 
  % met in thee tonight
  c1
  \removeWithTag #'partial { \sopmain }
}

altmain = {
  \tag #'partial { \partial 2 c='2 | }
  c2 d2 c2 d4( e4) |
  f2\( f2\) e2 \bar "||" d2
  d2 f2 f2 e2 |
  f1.
}

alto = \relative c' {
  \time 4/2
  \keepWithTag #'partial { \altmain  }
  \mbreak
  \keepWithTag #'partial { \altmain  }
  \mbreak
  
  f2 e2. d4 e2 c2 |
  c2( f2) e2 \bar "||" c2 |
  c2 c2 bes2 a4( bes4) |
  c1
  \mbreak

  c1
  \removeWithTag #'partial { \altmain }
}

tenormain = {
  \tag #'partial { \partial 2 g=2 | }
  a2 bes c bes |
  c2\( f,2\) g2 \bar "||" f2 |
  bes2 c2 d2 c4( bes4) |
  a1.
}

tenor = \relative c' {
  \key f \major
  \time 4/2
  \keepWithTag #'partial { \tenormain }
  \mbreak

  \keepWithTag #'partial { \tenormain }
  \mbreak

  a2 |
  a2. f4 c'2 c4( bes4) |
  a2( f2) g2 \bar "||" e2 |
  f2 f2 d4( e4) f2 |
  e1
  \mbreak

  f2( g2)
  \removeWithTag #'partial { \tenormain }
  \mbreak
}


bassmain = {
  \tag #'partial { \partial 2 e=2 | }
  f=2 bes a g |
  f\( d\) c \bar "||" d |
  g, a bes c |
  f1.
}

bass = \relative c {
  \key f \major
  \time 4/2
  \keepWithTag #'partial { \bassmain }
  \mbreak

  \keepWithTag #'partial { \bassmain }
  \mbreak

  d2 |
  a2. bes4 c2 d4( e4) |
  f2( d2) c2 \bar "||" c4( bes4) |
  a2 f2 bes2 d2 |
  c1
  \mbreak

  d2( e2)
  \removeWithTag #'partial { \bassmain }
  \mbreak
}

verseOne = \lyricmode {
  O lit -- tle town of __ |
  Beth -- le -- hem, How |
  still we __ see thee |
  lie! A -- |
  bove thy deep and __ |
  dream -- less sleep The |
  si -- lent stars go __ by. Yet __ 
  in thy dark __ streets __ |
  shi -- neth The |
  e -- ver -- last -- ing __ |
  light; The __ |
  hopes and fears of |
  all the years Are |
  met in __ thee to -- |
  night.
}

verseTwo = \lyricmode {
  O mor -- ning stars, to -- ge -- _ ther
}
