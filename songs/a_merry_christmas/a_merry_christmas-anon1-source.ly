% vim: set fileformat=dos:
mbreak = \break

soprano =  \relative f' {
  \clef "treble" \key bes \major \time 3/4 | % 1
  \tempo 4=132 f4 -\markup{ \bold {Allegro con spirito} } \f s2 | % 2
  bes4 bes8 [ c8 ] bes8 [ a8 ] | % 3
  g4 g4 g4 | % 4
  c4 c8 [ d8 ] c8 [ bes8 ] | % 5
  a4 f4 f4 | % 6
  d'4 d8 [ es8 ] d8 [ c8 ] | % 7
  bes4 g4 f8 [ f8 ] | % 8
  \mbreak

  g4 c4 a4 | % 9
  bes2 f4 \ff | \barNumberCheck #10
  bes4 bes4 bes4 | % 11
  a2 a4 | % 12
  bes4 a4 g4 | % 13
  f2 c'4 | % 14
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 15
  \mbreak

  f'4 f,4 f8 [ f8 ] | % 16
  g4 c4 a4 | % 17
  bes2. ~ | % 18
  bes2 r4 | % 19
  R2.*7 | % 26
  r4 r4 bes4 | % 27
  f'4 c4 f4 | % 28
  d4 ( c8 [ d8 ) ] c8 ( [ bes8 ) ] | % 29
  bes4 a4 f4 | \barNumberCheck #30
  f2 bes4 \mf | % 31
  f'2. \< ~ | % 32
  | % 32
  f4 \! es4 \f c4 | % 33
  d2 c8. [ c16 ] | % 34
  bes4 bes8 ( [ c8 ) ] bes8 [ a8 ] | % 35
  g4 g4 g4 | % 36
  c4 c8 ( [ d8 ) ] c8 [ bes8 ] | % 37
  a4 f4 f8. [ f16 ] | % 38
  d'4 d8 ( [ es8 ) ] d8 [ c8 ] | % 39
  bes4 g4 f4 | \barNumberCheck #40
  g4 c4 a4 | % 41
  bes2 f4 | % 42
  bes4 bes4 bes4 | % 43
  a2 a4 | % 44
  bes4 a4 g4 | % 45
  f2 c'4 | % 46
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 47
  f'4 f,4 f8 [ f8 ] | % 48
  g4 c4 a4 | % 49
  bes2 f8. [ f16 ] | \barNumberCheck #50
  f4 -> f4 -> r4 | % 51
  es4 -> es4 -> r4 | % 52
  g4 -> g4 -> r4 | % 53
  f4 -> f4 -> f8. [ f16 ] | % 54
  | % 54
  f'4 \< f4 fis8. [ fis16 ] | % 55
  | % 55
  g8 \! \> ( [ es8 ) ] bes4 f'4 \! | % 56
  bes,4 es4 c4 | % 57
  d2 f,4 | % 58
  bes4 bes4 bes4 | % 59
  a2 a4 | \barNumberCheck #60
  bes4 a4 g4 | % 61
  f2  
    %\once\override Markup #'X-offset = #-9.2
    c'4 -\markup{ \italic {subito} \dynamic pp } | % 62
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 63
  f'4 f,4 f8 [ f8 ] | % 64
  | % 64
  g4 -\markup{ \italic {accel.} } c4 a4 | % 65
  d4 ( bes4 ) es4 | % 66
  c4 f4 d4 | % 67
  g4 ( es4 -\markup{ \italic {molto rall.} } ) f4 | % 68
  bes4 a8 [ g8 ] f8 [ es8 ] | % 69
  d8 ( [ c8 ) ] d8 ( [ es8 ) ] f8 [ f8 ] | \barNumberCheck #70
  g,4 c4 a4 | % 71
  bes2 \fermata \bar "|."
}

alto =  \relative g' {
  \clef "treble" \key bes \major \time 3/4 | % 1
  r4 \f s2 | % 2
  R2.*6 | % 8
  g4 c4 a4 | % 9
  bes2 f8( \ff es8) | \barNumberCheck #10
  d8([ c8]) bes8([ c8]) d8([ es8)] | % 11
  f2 fis4 | % 12
  g4 f4 e4 | % 13
  f2 f4 | % 14
  f4 f8 [ f8 ] bes8 [ bes8 ] | % 15
  a8([ g8)] f4 f8 [ f8 ] | % 16
  es4 g4 f4 | % 17
  <d f>2. ~ ~ | % 18
  <d f>2 r4 | % 19
  R2.*6 | % 25
  r4 r4 f4 | % 26
  bes4 bes4 bes4 | % 27
  a2 a4 | % 28
  bes4 a4 g4 | % 29
  f2 c'4 | \barNumberCheck #30
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 31
  a4 f4 f8 [ f8 ] | % 32
  g4 c4 a4 | % 33
  bes2 a8. [ a16 ] | % 34
  bes8 ( [ f8 ) ] d8 ( [ es8 ) ] f8 [ f8 ] | % 35
  es4 bes4 r4 | % 36
  r8 g'8 e8 [ f8 ] g8 [ g8 ] | % 37
  f4 c4 f8. [ f16 ] | % 38
  f4 bes,8 ( [ c8 ) ] d8 [ f8 ] | % 39
  bes8 ( [ g8 ) ] es4 f4 | \barNumberCheck #40
  es4 g4 f4 | % 41
  f4 g4 es4 | % 42
  d2 e4 | % 43
  fis4. e8 d8 ( [ c8 ) ] | % 44
  bes4 c8 ( [ d8 ) ] e4 | % 45
  f2 f4 | % 46
  f4 g8 [ g8 ] bes8 [ bes8 ] | % 47
  a8([ g8)] f4 f8 [ f8 ] | % 48
  d4 g8 ( [ f8 ) ] es4 | % 49
  f2 f8. [ f16 ] | \barNumberCheck #50
  bes4 -> bes8 ( -> [ c8 ) ] bes8. [ a16 ] | % 51
  g4 g4 g4 | % 52
  c4 -> c8 ( -> [ d8 ) ] c8. [ bes16 ] | % 53
  a4 f4 f8. [ f16 ] | % 54
  | % 54
  d'4 \< d8 ( [ es8 ) ] d8. [ c16 ] | % 55
  | % 55
  bes4 \! \> g4 f4 \! | % 56
  g4 c4 a4 | % 57
  bes2 f4 | % 58
  f8 ( [ es8 ) ] d8 ( [ es8 ) ] f8 ( [ g8 ) ] | % 59
  c,2 c4 | \barNumberCheck #60
  bes4 c8 ( [ d8 ) ] e4 | % 61
  f2 f4 -\markup{ \italic {subito} \dynamic pp } | % 62
  f4 f8 [ f8 ] bes8 [ bes8 ] | % 63
  a8 ( [ g8 ) ] f4 f8 [ f8 ] | % 64
  | % 64
  es4 -\markup{ \italic {accel.} } g4 f4 | % 65
  a4 ( g4 ) bes4 | % 66
  as4 c4 bes4 | % 67
  bes2 c4 -\markup{ \italic {molto rall.} } | % 68
  bes4 bes8 [ bes8 ] a8 [ a8 ] | % 69
  bes8 ( [ a8 ) ] bes8 ( [ c8 ) ] <f, d'>8 [ <f bes>8 ] |
  \barNumberCheck #70
  <es g>4 g4 f4 | % 71
  f2 \fermata \bar "|."
}

tenor = \relative d' {
  \clef "treble_8" \key bes \major \time 3/4 | % 1
  r4 \f s2 | % 2
  R2.*6 | % 8
  R2.*2 | \barNumberCheck #10
  r4 \ff r4 d4 | % 11
  c4 c4 d4 | % 12
  d4 c4. bes8 | % 13
  a2 c4 | % 14
  bes4 c8 [ d8 ] e8 [ e8 ] | % 15
  f8([ c8)] a4 bes8 [ bes8 ] | % 16
  bes4 es8 [(d8)] c4 | % 17
  bes2 f4 | % 18
  bes4 bes8 [ c8 ] bes8 [ a8 ] | % 19
  g4 g4 g4 | \barNumberCheck #20
  c4 c8 [ d8 ] c8 [ bes8 ] | % 21
  a4 f4 f4 | % 22
  d'4 d8 [ es8 ] d8 [ c8 ] | % 23
  bes4 g4 f4 | % 24
  g4 c4 a4 | % 25
  bes2 f4 | % 26
  bes4 bes4 d4 | % 27
  c4 ( f4 ) c4 | % 28
  d8([ e8)] f4 e4 | % 29
  c2 f4 | \barNumberCheck #30
  d4 ( f2 | % 31
  c4 ) a4 bes4 | % 32
  bes4 g'4 f4 | % 33
  f2 f,8. [ f16 ] | % 34
  bes8 ( [ d8 ) ] f8 ( [ es8 ) ] d8 [ c8 ] | % 35
  bes8 ( [ a8 ) ] g4 g8. [ g16 ] | % 36
  c8 ( [ e8 ) ] g8 ( [ f8 ) ] e8 [ d8 ] | % 37
  c8 ( [ bes8 ) ] a4 c8. [ c16 ] | % 38
  f8 ( [ es8 ) ] d8 ( [ c8 ) ] bes8 [ as8 ] | % 39
  g4 bes4 bes4 | \barNumberCheck #40
  es4. d8 c4 | % 41
  bes2. ~ | % 42
  bes4 r4 r4 | % 43
  r4 d4 ( fis4 ) | % 44
  g4 f4 e8 ( [ d8 ) ] | % 45
  c4 bes4 a4 | % 46
  bes4 r4 f'4 | % 47
  es4. d8 c4 | % 48
  bes8 ( [ a8 ) ] g4 c4 | % 49
  d4 ( bes4 ) f8. [ f16 ] | \barNumberCheck #50
  d'4 -> d4 -> r4 | % 51
  bes4 -> bes4 -> r4 | % 52
  es4 -> es4 -> r4 | % 53
  c4 -> a4 -> c8. [ c16 ] | % 54
  bes8 \< [(d8)] f4 as8. [ as16 ] | % 55
  | % 55
  g4 \! \> es4 bes4 \! | % 56
  bes4 g'4 f4 | % 57
  f2 es4 | % 58
  d8 ( [ c8 ) ] bes8 ( [ c8 ) ] d8 ( [ es8 ) ] | % 59
  f2 f4 | \barNumberCheck #60
  f4 f4 c4 | % 61
  c4 ( bes4 -\markup{ \italic {subito} \dynamic pp } ) a4 | % 62
  bes4 c8 [ d8 ] e8 [ e8 ] | % 63
  f8 ( [ c8 ) ] a4 bes8 [ bes8 ] | % 64
  | % 64
  bes4 -\markup{ \italic {accel.} } es8 ( [ d8 ) ] c4 | % 65
  f4 ( d4 ) g4 | % 66
  es4 as8 ( [ g8 ) ] f4 | % 67
  es4 ( g4 -\markup{ \italic {molto rall.} } ) a8 ( [ g8 ) ] | % 68
  f4 es8 [ es8 ] es8 [ es8 ] | % 69
  f4 bes,4 f8 [ bes8 ] | \barNumberCheck #70
  bes4 es8 ( [ d8 ) ] c4 | % 71
  d2 \fermata \bar "|."
}


bass =  \relative bes, {
  \clef "bass" \key bes \major \time 3/4 | % 1
  r4 \f s2 | % 2
  R2.*6 | % 8
  R2.*2 | \barNumberCheck #10
  r4 \ff r4 bes4 | % 11
  f'4 f4 d4 | % 12
  g4 c4 c,4 | % 13
  f2 a4 | % 14
  bes4 a8 [ a8 ] g8 [ g8 ] | % 15
  f4 f8([ es8)] d8 [ d8 ] | % 16
  es8 [ d8 ] c4 f4 | % 17
  bes,2. ~ | % 18
  bes2 bes4 | % 19
  es4 es8 [ f8 ] es8 [ d8 ] | \barNumberCheck #20
  c4 c4 e4 | % 21
  f4 f8 [ g8 ] f8 [ es8 ] | % 22
  d8 ( [ e8 ) ] fis4 d4 | % 23
  g4. f8 es8 [ d8 ] | % 24
  es8 ( [ d8 ) ] c4 f4 | % 25
  bes,2 f'4 | % 26
  bes4 bes4 bes,4 | % 27
  f'2 f4 | % 28
  bes4 c4 c,4 | % 29
  f2 a4 | \barNumberCheck #30
  bes4 a8 [ a8 ] g8 [ g8 ] | % 31
  f4 f8 ( [ es8 ) ] d8 [ d8 ] | % 32
  es8([ d8)] c4 f4 | % 33
  bes,4 ( d4 ) f8. [ f16 ] | % 34
  bes2 ( bes,4 ) | % 35
  es2 ( g4 ) | % 36
  c2 c,4 | % 37
  f4 f4 a8. [ a16 ] | % 38
  bes4 bes4 bes,8 [ bes8 ] | % 39
  es4 es4 d4 | \barNumberCheck #40
  c2 es4 | % 41
  d4 es4 c4 | % 42
  bes4 bes'4 ( c4 ) | % 43
  d4 d4 d,4 | % 44
  g4 c4 bes4 | % 45
  a4 ( g4 ) f4 | % 46
  bes4 es8 [ es8 ] d8 [ d8 ] | % 47
  c4. bes8 a8 [ a8 ] | % 48
  g8 ( [ f8 ) ] es8 ( [ d8 ) ] c4 | % 49
  bes8 ( [ c8 ] d8 [ es8 ) ] f8. [ f16 ] | \barNumberCheck #50
  bes4 -> bes4 -> r4 | % 51
  es,4 -> es4 -> r4 | % 52
  c4 -> c4 -> r4 | % 53
  f4 -> f4 -> a8. [ a16 ] | % 54
  | % 54
  bes4 \< bes4 <bes, bes'>8. [ <bes bes'>16 ] | % 55
  | % 55
  <es bes'>4 \! \> es4 d4 \! | % 56
  es8 ( [ d8 ) ] c4 f4 | % 57
  bes4 ( d4 ) c4 | % 58
  bes4 bes4 bes,4 | % 59
  f'8 ( [ g8 ] f8 [ es8 ) ] d8 ( [ c8 ) ] | \barNumberCheck #60
  d4 c4 c'8 ( [ bes8 ) ] | % 61
  a4 ( g4 -\markup{ \italic {subito} \dynamic pp } ) f4 | % 62
  bes4 a8 [ a8 ] g8 [ g8 ] | % 63
  f4 f8 ( [ es8 ) ] d8 [ d8 ] | % 64
  | % 64
  es4 -\markup{ \italic {accel.} } c4 f4 | % 65
  d4 ( g4 ) es4 | % 66
  as4 f4 bes4 | % 67
  es2 es4 -\markup{ \italic {molto rall.} } | % 68
  d4 es8 [ d8 ] c8 [ c8 ] | % 69
  bes4 g4 d8 [ d8 ] | \barNumberCheck #70
  es8 ( [ d8 ) ] c4 f4 | % 71
  bes,2 \fermata \bar "|."
}

verseOneSoprano =  \lyricmode { 
  We wish you a mer -- ry Christ -- mas, 
  we wish you a mer -- ry Christ -- mas, 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 
  
  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. __

  Good ti -- dings we bring __
  to you and your kin; 
  %
  a hap -- py New Year.

  For we all like __ fig -- gy pud -- ding,
  we all like __ fig -- gy pud -- ding,
  for we all like __ fig -- gy pud -- ding,
  so bring some out here. 

  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 

  And we won’t go won’t go 
  won’t go won’t go 
  and we won’t go till we’ve got some, 
  so bring some out here. 

  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,
  a hap -- py New Year. 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 
}

verseOneAlto = \lyricmode {
  hap -- py New Year. 
  
  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. __

  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year.

  For we all like __ fig -- gy pud -- ding,
  we all like __ fig -- gy pud -- ding,
  for we all like __ fig -- gy pud -- ding,
  so bring some, so bring some out here. 

  Good ti -- dings we bring 
  to your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 

  And we won’t go ’till we’ve got some,
  we won’t go ’till we’ve got some
  and we won’t go ’till we’ve got some,
  so bring some out here. 

  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,
  a hap -- py New Year. 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 
}

verseOneTenor = \lyricmode {
  Good ti -- dings,
  good ti -- dings we bring
  we wish you a mer -- ry Christ -- mas,
  and a hap -- py New Year. 

  Now bring us some fig -- gy pud -- ding,
  now bring us some fig -- gy pud -- ding,
  now bring us some fig -- gy pud -- ding,
  and bring some out here.

  Good ti -- dings we bring 
  to you and your kin; 
  We wish __ you a hap -- py New Year. 

  For we all like fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
  so bring some out here. __

  Good __ ti -- dings we bring 
  to your kin; 
  We wish __ you a hap -- py New Year. 

  And we won’t go won’t go 
  won’t go won’t go 
  And we won’t go till we’ve got some, 
  so bring some out here. 

  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,
  a hap -- py New Year. 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 
}

verseOneBass = \lyricmode {
  Good ti -- dings,
  good ti -- dings we bring
  we wish you a mer -- ry Christ -- mas,
  and a hap -- py New Year. __

  Now bring us some fig -- gy pud -- ding,
  now bring us some fig -- gy pud -- ding,
  now bring us some fig -- gy pud -- ding out here.

  Good ti -- dings we bring 
  to you and your kin; 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,

  For we all like fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
  so bring some, bring some out here.

  Good __ ti -- dings we bring 
  to your kin; 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,

  And we won’t go won’t go 
  won’t go won’t go 
  And we won’t go till we’ve got some, 
  so bring some out here. 

  Good ti -- dings we bring 
  to you and your kin; 
  we wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,
  a hap -- py New Year. 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 

}
