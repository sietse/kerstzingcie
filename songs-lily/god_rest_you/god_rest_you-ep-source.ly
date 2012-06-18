% vim: set fileformat=dos:
\version "2.12.3"

soprano = {
  \clef "treble" \key g \major \time 4/4 
  \phrasingSlurDashed

  \partial 4 e'4 ^\markup{ \bold {Cheerful, flowing} } | % 1
  e'4 b'4 b'4 a'4 | % 1
  g'4\( fis'4\) e'4 d'4 | % 2
  e'4 fis'4 g'4 a'4 | % 3
  b'2. e'4 | % 4

  e'4 b'4 b'4 a'4 | % 5
  g'4( fis'4) e'4 d'4 | % 6
  e'4 fis'4 g'4 a'4 | % 7
  b'2 \oneVoice r4 \voiceOne b'4 | % 8
  c''4 a'4 b'4 c''4 |
  d''4\( e''4\) b'4 a'4 | % 10
  g'4 e'4 fis'4 g'4 | % 11

  a'2 \bar "||" g'4( a'4) | % 13
  b'2 c''4 b'4 | % 14
  b'4( a'4) g'4 fis'4 | % 15
  e'2 g'8[ fis'8] e'4 | % 16
  a'2 g'4( a'4) | % 17
  b'4( c''4) d''4 e''4
  b'4( a'4) g'4 fis'4 |
  e'2. \bar "|."
}

alto = {
  \clef "treble" \key g \major \time 4/4 
  \partial 4 e'4
  \phrasingSlurDashed
  e'4 g'4 fis'4 fis'4 | % 1
  e'4\( b4\) b4 b4 | % 2
  b4 d'4 e'4 e'4 | % 3
  dis'2. e'4 | % 4

  e'4 g'4 fis'4 fis'4 | % 5
  e'4( d'4) c'4 b4 | % 6
  b4 d'4 b4 e'4 | % 7
  dis'2 s4 e'4 | % 8
  e'4 d'4 d'4 e'4 |
  d'4\( g'4\) g'4 fis'4 | % 10
  e'4 cis'4 d'4 d'4 | % 11

  fis'2 \bar "||" g'4( a'4) | % 12
  g'2 e'4 d'4 | % 13
  g'4( fis'4) e'4 dis'4 | % 14
  e'2 b8[ b8] cis'4 | % 15
  d'2 g'4( a'4) | % 16
  g'2 g'4 g'4 | % 17
  g'4( fis'4) e'4 dis'4 | % 18
  e'2. \bar "|."
}

tenor = {
    \clef "bass" 
    \key g \major 
    \time 4/4 
    \phrasingSlurDashed
    
    \partial 4 e4 |
    e4 e'4 d'4 d'4 | % 1
    b4\( b4\) g4 fis4 | % 2
    g4 a4 e4 e4 | % 3
    fis2. e4 | % 4

    e4 e'4 d'4 d'4 | % 5
    b2 g4 g4 | % 6
    g4 b4 g4 e4 | % 7
    fis2 r4 gis4 | % 8
    a4 fis4 g4 g4 | % 9
    g4\( g4\) d'4 d'4 | % 10
    b4 g4 a4 d'4 | % 11

    d'2 \bar "||" g4( a4) | % 12
    b2 g4 g4 | % 13
    d'4( c'4) b4 b4 | % 14
    g2 g8 [ g8 ] g4 | % 15
    fis2 g4( a4) | % 16
    b4( g4) d'4 c'4 | % 18
    d'4( c'4) b4 b4 | % 19
    g2. \bar "|."
}

bass = {
    \clef "bass" 
    \key g \major 
    \time 4/4 
    \phrasingSlurDashed
    
    \partial 4 e4 |
    e4 e4 b,4 d4 | % 1
    e4\( b,4\) e4 b,4 | % 2
    e4 d4 c4 c4 | % 3
    b,2. e4 | % 4

    e4 e4 b,4 d4 | % 5
    e4( b,4) c4 g4 | % 6
    e4 b,4 e4 c4 | % 7
    b,2 r4 e4 | % 8
    a,4 d4 g,4 c4 |
    b,4\( c4\) g,4 d4 | % 10
    e4 e4 d4 b,4 | % 11

    d2 \bar "||" g4( a4) | % 12
    g2 c4 g4 | % 13
    g4( a4) b4 b,4 | % 14
    e2 e8 [ e8 ] e4 | % 15
    d2 g4( a4) | % 16
    g4( e4) b,4 c4 | % 18
    g,4( a,4) b,4 b,4 | % 19
    e2.\bar "|."
}

verseOne = \lyricmode {
  God rest ye mer -- ry, gen -- tle -- men,
  let no -- thing you dis -- may,
  for Je -- sus Christ our Sa -- viour
  was born up -- on this day,
  to save us all from Sa -- "tan’s" "pow’r"
  when we were gone a -- stray; 
} 

verseTwo = \lyricmode {
  In Beth -- le -- hem in Jew __ -- _ ry 
  this bles -- sed babe was born, 
  and laid with -- in a man -- ger 
  up -- on this bles -- sed morn, 
  the which his mo -- ther "Ma     " -- _ ry 
  no -- thing did take in scorn;
}

verseThree = \lyricmode {
  From God our heav’n -- ly "Fa__" -- _ ther 
  a bles -- sed an -- gel came, 
  and un -- to cer -- tain shep -- herds 
  brought ti -- dings of the same, 
  how that in Beth -- le -- hem was born
  the son of God by name;
  O __ ti -- dings of com -- fort and joy,
  com -- fort and joy,
  O __ ti -- dings of com -- fort and joy.
}

verseFour = \lyricmode {
  Fear not, then said the "An__"  -- _ gel,
  let no -- thing you af -- fright;
  this day is born a Sa -- vior,
  of vir -- tue, po -- wer, and might;
  so fre -- quent -- ly to van -- quish all
  the friends of Sa -- tan quite;
}

verseSeven = \lyricmode {
  Now to the Lord sing "prai_" -- _ ses, 
  all you with -- in this place, 
  and with true love and brother -- hood 
  each o -- ther now em -- brace; 
  this ho -- ly tide of Christ -- _ mas 
  all o -- thers doth de -- face;
}
