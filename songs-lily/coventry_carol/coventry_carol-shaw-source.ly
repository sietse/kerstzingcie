% vim: set fileformat=dos:

soprano = \relative c'' {
  \clef "treble" \key g \minor \time 3/2 | % 1
  \phrasingSlurDashed
  g2 g2 fis2 | % 2
  g1 bes2 | % 3
  a4 a4 a2 g2 | % 4
  fis1. | % 5
  g2 a2 bes2 | % 6
  c2 a1 | % 7
  b1. \repeat volta 3 {
    | % 8
    | % 8
    g2 g2 fis2 | % 9
    g1 bes2 | \barNumberCheck #10
    a1 g2 | % 11
    fis1. | % 12
    g2 a2 bes2 | % 13
    c2 a1 | % 14
    g1 d'2 | % 15
    c1 bes2 | % 16
    a2 \( a2 \) bes2 | % 17
    a2 \( a2 \) g2 | % 18
    fis1. | % 19
    g2 fis2 g2 | \barNumberCheck #20
    c2 a1 | % 21
    b1. }
}

alto = \relative c' {
  \clef "treble" \key g \minor \time 3/2 | % 1
  \phrasingSlurDashed
  d2 d2 d2 | % 2
  d1 g2 | % 3
  f4 f4 f2 d2 | % 4
  d1. | % 5
  d2 f2 f2 | % 6
  g1 fis2 | % 7
  g1. \repeat volta 3 {
      | % 8
      | % 8
      d2 d2 d2 | % 9
      d1 g2 | \barNumberCheck #10
      f1 d2 | % 11
      d1. | % 12
      d2 f2 f2 | % 13
      g1 fis2 | % 14
      g1 f2 | % 15
      a1 g2 | % 16
      f2 \( f2 \) d2 | % 17
      f2 \( f2 \) c2 | % 18
      d1. | % 19
      d2 d2 d2 | \barNumberCheck #20
      g1 fis2 | % 21
      g1. 
  }
}

tenor = \relative c' {
  \clef "bass" \key g \minor \time 3/2 bes2 bes2 a2 | % 2
  \phrasingSlurDashed
  bes1 es2 | % 3
  c4 c4 c2 bes2 | % 4
  a1. | % 5
  bes2 c2 d2 | % 6
  es2 d1 | % 7
  d1. \repeat volta 3 {
    | % 8
    bes2 bes2 a2 | % 9
    bes1 es2 | \barNumberCheck #10
    c1 bes2 | % 11
    a1. | % 12
    bes2 c2 d2 | % 13
    es2 d1 | % 14
    d1 d2 | % 15
    f1 d2 | % 16
    d2 \( d2 \) bes2 | % 17
    c2 \( c2 \) g2 | % 18
    a1. | % 19
    bes2 a2 bes2 | \barNumberCheck #20
    es2 d1 | % 21
    d1. } 
}

bass = \relative c' {
  \clef "bass" \key g \minor \time 3/2 g2 g2 d2 | % 2
  \phrasingSlurDashed
  g1 es2 | % 3
  f4 f4 f2 g2 | % 4
  d1. | % 5
  g2 f2 d2 | % 6
  c2 d1 | % 7
  g1. \repeat volta 3 {
    | % 8
    g2 g2 d2 | % 9
    g1 es2 | \barNumberCheck #10
    f1 g2 | % 11
    d1. | % 12
    g2 f2 d2 | % 13
    c2 d1 | % 14
    g1 bes2 | % 15
    f1 g2 | % 16
    d2 \( d2 \) g2 | % 17
    f2 \( f2 \) e2 | % 18
    d1. | % 19
    g2 d2 g2 | \barNumberCheck #20
    c,2 d1 | % 21
    g1. 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \mark \markup{ \smaller \italic "After third verse, repeat refrain" }
  }
}

verseOne = \lyricmode {
  \skip4 \skip4 \skip4 \skip4
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
  \skip4 \skip4 \skip4 
  \markup{\dynamic p \bold{1.} O} sis -- ters too, 
  How may we do for to pre -- serve this day 
  this poor young -- ling, __ _
  for whom we do sing,
  by, by, lul -- ly lul -- lay? 
}
verseTwo = \lyricmode {
  \markup{\dynamic pp Lul} -- ly, lul -- la, 
  thou lit -- tle ti -- ny child, 
  by, by, lul -- ly lul -- lay. 
  \markup{\dynamic f \bold {2.} He} -- rod, the king, 
  in his rag -- ing, 
  char -- ged he hath this day 
  his men of might, _ in his __ _ own sight, 
  all young chil -- dren to slay. 
}

verseThree = \lyricmode {
  \skip4 \skip4 \skip4 \skip4
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
  \skip4 \skip4 \skip4 
  \markup{\dynamic pp \bold{3.} That} woe is me, 
  poor child for thee! 
  and ev -- er morn and day 
  for thy part -- ing, 
  nei -- ther say __ _ nor sing, 
  by, by, lul -- ly lul -- lay! 
}
