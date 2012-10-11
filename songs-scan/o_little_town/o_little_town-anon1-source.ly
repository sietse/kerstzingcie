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
  c1^\markup { \italic {undotted}}
  \mbreak

  % The 
  % hopes and fears of 
  % all the years are 
  % met in thee tonight
  c1
  \removeWithTag #'partial { \sopmain }
  \mbreak

  \pageBreak
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
  e1^\markup { \italic { undotted}}
  \mbreak

  f2( g2)
  % FIXME wrong notes?
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
  % FIXME wrong notes
  \removeWithTag #'partial { \bassmain }
  \mbreak
}

descantskip = {
  s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 
  s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 
  s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 
  s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 
}

descantdescant = \relative c' {
  \key f \major
  \partial 2
  c2 |
  f2 f4( g4) a2 bes2 |
  c2 f2 e2 d2 |
  d2 c2 g2 c2 |
  c1.
  \bar "||" \mbreak

  c,2 |
  f2 f4( g4) a2 bes2 |
  c2 f2 e2 d2 |
  d2 c2 g2 c2 |
  c1.
  \bar "||" \mbreak

  f,4( a4) |
  c2 e2 f2 g2 |
  c,2( f2) e2. d4 |
  c2 c2 d2 a4( bes4) |
  c1
  \bar "||" \mbreak

  c,1 |
  f2 f4( g4) a2 bes2 |
  c2 d2 es2 f2 |
  d2 a4( bes4) c2 c2 |
  c1. 
  \bar "||" \mbreak
}

sopranodescant = \relative c' {
  \partial 2
  c2 |
  f2 f2 f2 g2 |
  a4( g4) a4( bes4) c2 a2 |
  bes2 a4( f4) g2 g2 |
  f1. \bar "||"

  c2 |
  f2 f2 f2 g2 |
  a4( g4) a4( bes4) c2 a2 |
  bes2 a4( f4) g2 g2 |
  f1. \bar "||"

  f4( a4) |
  c2. d4 c4( bes4) a4( g4) |
  f4( g4 a4 bes4) c2 c,2 |
  f2 a2 g2 f2 |
  c1^\markup { \italic{undotted}}
  \bar "||"

  c1 |
  f2 f2 f2 g2 |
  a4( g4) a4( bes4) c2 a2 |
  bes2 a4( f4) g2 g2 |
  f1. \bar "||"
}

altodescant = \relative c' {
  \partial 2
  c2 |
  c2 d2 c2 d4( e4) |
  f2 f4( g4) a2 f2 |
  d4( e4) f2 f2 e2 |
  c1.

  c2 |
  c2 d2 c2 d4( e4) |
  f2 f4( g4) a2 f2 |
  d4( e4) f2 f2 e2 |
  c1.

  f4( a4) |
  c2 e,2 d2 c2 |
  a'2 d,2 e2 c2 |
  c2 f2 d2 f2 |
  c1

  c1 c2 d2 c2 d4( e4) |
  f2 f2 es4( d4) d4( c4) |
  d4( e!4) f2 f2 e2 |
  f1.
}

tenordescant = \relative c' {
  \partial 2
  g2 |
  a2 bes2 c2 bes2 |
  a2 d2 c2 d2 |
  bes2 c2 d2 c2 |
  a1.

  g2 |
  a2 bes2 c2 bes2 |
  a2 d2 c2 d2 |
  bes2 c2 d2 c2 |
  a1.

  f4( a4) |
  c2 g2 f2 bes2 |
  a2 f2 g2 e2 |
  f2 c'2 bes2 f2 |
  g2( e2)

  f2( g2) |
  a2 bes2 c2 bes2 |
  a2 f2 g2 f2 |
  f2 f2 c'2 g2 |
  a1.
}

bassdescant = \relative c {
  e2 |
  f2 bes2 a2 g2 |
  f2 d2 a2 d2 |
  g,2 a2 bes2 c2 |
  f,1.

  e'2 |
  f2 bes2 a2 g2 |
  f2 d2 a2 d2 |
  g,2 a2 bes2 c2 |
  f,1.

  f'4( a4) |
  c2 g2 f2 bes2 |
  f2 d2 c2 c4( bes4) |
  a2 f2 bes2 d2 |
  e2( c2)

  d2( e2) |
  f2 bes2 a2 g2 |
  f2 d2 a2 f2 |
  bes4( c4) d2 c2 c2 |
  f,1.
}

verseOne = \lyricmode {
  O lit -- tle town of __ |
  Beth -- le -- hem, How |
  still we __ see thee __ |
  lie! A -- |
  bove thy deep and __ |
  dream -- less __ sleep The |
  si -- lent stars go __ by. Yet __ 
  in thy dark __ streets __ |
  shi -- neth The __ |
  e -- ver -- last -- ing __ |
  light; The __ |
  hopes and fears of __ |
  all __ the __ years Are |
  met in __ thee to -- |
  night.
}

verseTwo = \lyricmode {
  O mor -- ning stars, to -- ge -- _ ther~ Pro
    -- claim the __ ho -- ly __ birth,
  And prai -- ses sing to __ God __ the __ King,
  And peace to __ men on __ | earth;
  For __ Christ is born __ of __ Ma -- ry;
  And, __ gath -- ered all __ a -- bove,
  While __ mor -- tals sleep, the __ | an -- gels __ keep~ Their
    watch of __ wond -- ’ring love.
}

verseThree = \lyricmode {
  How si -- lent -- ly, how si -- lent -- ly,
  The won -- drous gift is __ giv’n!
  So God im -- parts to __ hu -- man __ hearts
  The bless -- ings __ of his __ heav’n.
  No __ ear may hear __ his __ com -- ing;
  But __ in this world of __ sin,
  Where __ meek souls will re -- ceive him, still~ The
  dear Christ en -- ters __ in.
}

verseFour = \lyricmode {
  O ho -- ly __ Child of Beth -- le -- hem,
  Des -- cend to us, we pray;
  Cast out our __ sin, and en -- ter in,
  Be  born in us to -- day.
  We __ hear the Christ -- mas an -- gels
  The great glad ti -- dings tell:
  O come to __ us, a -- bide with us, 
  Our Lord Em -- man -- u -- el.
}
