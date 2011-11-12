% vim: set fileformat=dos:

soprano =  \relative f' {
  \clef "treble" \key bes \major \time 3/4
  \tempo 4=132 
  \partial 4 f4^\markup{ \bold {Allegro con spirito} } \f | \noBreak % 1
  bes4 bes8 [ c8 ] bes8 [ a8 ] | \noBreak % 2
  g4 g4 g4 | \noBreak % 3
  c4 c8 [ d8 ] c8 [ bes8 ] | \noBreak % 4
  a4 f4 f4 | \noBreak % 5
  d'4 d8 [ es8 ] d8 [ c8 ] | % 6
  bes4 g4 f8 [ f8 ] | % 7

  g4 c4 a4 | % 8
  bes2 f4 \ff | \barNumberCheck #9
  bes4 bes4 bes4 | % 10
  a2 a4 | % 11
  bes4 a4 g4 | % 12
  f2 c'4 | % 13
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 14

  f'4 f,4 f8 [ f8 ] | % 15
  g4 c4 a4 | % 16
  bes2. ~ | % 17
  bes2 r4 | % 18
  R2.*7 | % 25
  r4 r4 bes4 | % 26
  f'4 c4 f4 | % 27
  d4 ( c8 [ d8 ) ] c8 ( [ bes8 ) ] | % 28
  bes4 a4 f4 | \barNumberCheck #29
  f2 bes4 \mf | % 30
  f'2. \< ~ | % 31
  f4 \! es4 \f c4 | % 32
  d2 c8. [ c16 ] | % 33
  bes4 bes8 ( [ c8 ) ] bes8 [ a8 ] | % 34
  g4 g4 g4 | % 35
  c4 c8 ( [ d8 ) ] c8 [ bes8 ] | % 36
  a4 f4 f8. [ f16 ] | % 37
  d'4 d8 ( [ es8 ) ] d8 [ c8 ] | % 38
  bes4 g4 f4 | \barNumberCheck #39
  g4 c4 a4 | % 40
  bes2 f4 | % 41
  bes4 bes4 bes4 | % 42
  a2 a4 | % 43
  bes4 a4 g4 | % 44
  f2 c'4 | % 45
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 46
  f'4 f,4 f8 [ f8 ] | % 47
  g4 c4 a4 | % 48
  bes2 f8. [ f16 ] | \barNumberCheck #49
  f4 -> f4 -> r4 | % 50
  es4 -> es4 -> r4 | % 51
  g4 -> g4 -> r4 | % 52
  f4 -> f4 -> f8. [ f16 ] | % 53
  | % 53
  f'4 \< f4 fis8. [ fis16 ] | % 54
  | % 54
  g8 \! \> ( [ es8 ) ] bes4 f'4 \! | % 55
  bes,4 es4 c4 | % 56
  d2 f,4 | % 57
  bes4 bes4 bes4 | % 58
  a2 a4 | \barNumberCheck #59
  bes4 a4 g4 | % 60
  f2 
    %\once \override TextScript #'extra-offset = #'(-12 . 0)
    %\once \override TextScript #'layer = #100
    c'4-\markup{ 
      \halign #1.4 \italic {subito} \dynamic pp
    } | % 61
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 62
  f'4 f,4 f8 [ f8 ] | % 63
  | % 63
    %\once \override TextScript #'extra-offset = #'(-7 . 0)
  g4-\markup{ \halign #0 \italic {accel.} } c4 a4 | % 64
  d4 ( bes4 ) es4 | % 65
  c4 f4 d4 | % 66
  g4 ( es4) 
    \once \override TextScript #'extra-offset = #'(-7 . 0)
    f4-\markup{ \italic {molto rall.} }  | % 67
  bes4 a8 [ g8 ] f8 [ es8 ] | % 68
  d8 ( [ c8 ) ] d8 ( [ es8 ) ] f8 [ f8 ] | \barNumberCheck #69
  g,4 c4 a4 | % 70
  bes2 \fermata \bar "|."
}

alto =  \relative g' {
  \clef "treble" \key bes \major \time 3/4
  \partial 4 r4 | % 1
  R2.*6 | % 7
  g4 c4 a4 | % 8
  bes2 f8( \ff es8) | \barNumberCheck #9
  d8([ c8]) bes8([ c8]) d8([ es8)] | % 10
  f2 fis4 | % 11
  g4 f4 e4 | % 12
  f2 f4 | % 13
  f4 f8 [ f8 ] bes8 [ bes8 ] | % 14
  a8([ g8)] f4 f8 [ f8 ] | % 15
  es4 g4 f4 | % 16
  <d f>2. ~ ~ | % 17
  <d f>2 r4 | % 18
  R2.*6 | % 24
  r4 r4 f4 | % 25
  bes4 bes4 bes4 | % 26
  a2 a4 | % 27
  bes4 a4 g4 | % 28
  f2 c'4 | \barNumberCheck #29
  d4 c8 [ c8 ] bes8 [ bes8 ] | % 30
  a4 f4 f8 [ f8 ] | % 31
  g4 c4 a4 | % 32
  bes2 a8. [ a16 ] | % 33
  bes8 ( [ f8 ) ] d8 ( [ es8 ) ] f8 [ f8 ] | % 34
  es4 bes4 r4 | % 35
  r8 g'8 e8 [ f8 ] g8 [ g8 ] | % 36
  f4 c4 f8. [ f16 ] | % 37
  f4 bes,8 ( [ c8 ) ] d8 [ f8 ] | % 38
  bes8 ( [ g8 ) ] es4 f4 | \barNumberCheck #39
  es4 g4 f4 | % 40
  f4 g4 es4 | % 41
  d2 e4 | % 42
  fis4. e8 d8 ( [ c8 ) ] | % 43
  bes4 c8 ( [ d8 ) ] e4 | % 44
  f2 f4 | % 45
  f4 g8 [ g8 ] bes8 [ bes8 ] | % 46
  a8([ g8)] f4 f8 [ f8 ] | % 47
  d4 g8 ( [ f8 ) ] es4 | % 48
  f2 f8. [ f16 ] | \barNumberCheck #49
  bes4 -> bes8 ( -> [ c8 ) ] bes8. [ a16 ] | % 50
  g4 g4 g4 | % 51
  c4 -> c8 ( -> [ d8 ) ] c8. [ bes16 ] | % 52
  a4 f4 f8. [ f16 ] | % 53
  | % 53
  d'4 \< d8 ( [ es8 ) ] d8. [ c16 ] | % 54
  | % 54
  bes4 \! \> g4 f4 \! | % 55
  g4 c4 a4 | % 56
  bes2 f4 | % 57
  f8 ( [ es8 ) ] d8 ( [ es8 ) ] f8 ( [ g8 ) ] | % 58
  c,2 c4 | \barNumberCheck #59
  bes4 c8 ( [ d8 ) ] e4 | % 60
  f2 
    f4
    -\markup{ \halign #1.4 \italic {subito} \dynamic pp } | % 61
  f4 f8 [ f8 ] bes8 [ bes8 ] | % 62
  a8 ( [ g8 ) ] f4 f8 [ f8 ] | % 63
  | % 63
  es4-\markup{ \halign #0 \italic {accel.} } 
  g4 f4 | % 64
  a4 ( g4 ) bes4 | % 65
  as4 c4 bes4 | % 66
  bes2 
    \once \override TextScript #'extra-offset = #'(-7 . 0)
  c4-\markup{ \halign #-1 \italic {molto rall.} } | % 67
  bes4 bes8 [ bes8 ] a8 [ a8 ] | % 68
  bes8 ( [ a8 ) ] bes8 ( [ c8 ) ] <f, d'>8 [ <f bes>8 ] |
  \barNumberCheck #69
  <es g>4 g4 f4 | % 70
  f2 \fermata \bar "|."
}

tenor = \relative d' {
  \clef "treble_8" \key bes \major \time 3/4
  \partial 4 r4 | % 1
  R2.*6 | % 7
  R2.*2 | \barNumberCheck #9
  r4 r4 d4\ff  | % 10
  c4 c4 d4 | % 11
  d4 c4. bes8 | % 12
  a2 c4 | % 13
  bes4 c8 [ d8 ] e8 [ e8 ] | % 14
  f8([ c8)] a4 bes8 [ bes8 ] | % 15
  bes4 es8 [(d8)] c4 | % 16
  bes2 f4 | % 17
  bes4 bes8 [ c8 ] bes8 [ a8 ] | % 18
  g4 g4 g4 | \barNumberCheck #19
  c4 c8 [ d8 ] c8 [ bes8 ] | % 20
  a4 f4 f4 | % 21
  d'4 d8 [ es8 ] d8 [ c8 ] | % 22
  bes4 g4 f4 | % 23
  g4 c4 a4 | % 24
  bes2 f4 | % 25
  bes4 bes4 d4 | % 26
  c4( f4) c4 | % 27
  d8([ e8)] f4 e4 | % 28
  c2 f4 | \barNumberCheck #29
  d4\( f2 | % 30
  c4\) a4 bes4 | % 31
  bes4 g'4 f4 | % 32
  f2 f,8. [ f16 ] | % 33
  bes8 ( [ d8 ) ] f8 ( [ es8 ) ] d8 [ c8 ] | % 34
  bes8 ( [ a8 ) ] g4 g8. [ g16 ] | % 35
  c8 ( [ e8 ) ] g8 ( [ f8 ) ] e8 [ d8 ] | % 36
  c8 ( [ bes8 ) ] a4 c8. [ c16 ] | % 37
  f8 ( [ es8 ) ] d8 ( [ c8 ) ] bes8 [ as8 ] | % 38
  g4 bes4 bes4 | \barNumberCheck #39
  es4. d8 c4 | % 40
  bes2. ~ | % 41
  bes4 r4 r4 | % 42
  r4 d4 ( fis4 ) | % 43
  g4 f4 e8 ( [ d8 ) ] | % 44
  c4 bes4 a4 | % 45
  bes4 r4 f'4 | % 46
  es4. d8 c4 | % 47
  bes8 ( [ a8 ) ] g4 c4 | % 48
  d4 ( bes4 ) f8. [ f16 ] | \barNumberCheck #49
  d'4 -> d4 -> r4 | % 50
  bes4 -> bes4 -> r4 | % 51
  es4 -> es4 -> r4 | % 52
  c4 -> a4 -> c8. [ c16 ] | % 53
  bes8 \< [(d8)] f4 as8. [ as16 ] | % 54
  | % 54
  g4 \! \> es4 bes4 \! | % 55
  bes4 g'4 f4 | % 56
  f2 es4 | % 57
  d8 ( [ c8 ) ] bes8 ( [ c8 ) ] d8 ( [ es8 ) ] | % 58
  f2 f4 | \barNumberCheck #59
  f4 f4 c4 | % 60
  c4( bes4) 
    %\once \override TextScript #'extra-offset = #'(0 . 3) 
    %\once \override TextScript #'layer = #100
    a4-\markup{ 
      \halign #1.4 \italic {subito} \dynamic pp
    } | % 61
  bes4 c8 [ d8 ] e8 [ e8 ] | % 62
  f8 ( [ c8 ) ] a4 bes8 [ bes8 ] | % 63
  | % 63
  bes4-\markup{ \halign #0 \italic {accel.} } 
    es8 ( [ d8 ) ] c4 | % 64
  f4 ( d4 ) g4 | % 65
  es4 as8 ( [ g8 ) ] f4 | % 66
  es4 ( g4) 
    \once \override TextScript #'extra-offset = #'(-7 . 0)
    a8(-\markup{ \halign #-1 \italic {molto rall.} }  
  [ g8 ) ] | % 67
  f4 es8 [ es8 ] es8 [ es8 ] | % 68
  f4 bes,4 f8 [ bes8 ] | \barNumberCheck #69
  bes4 es8 ( [ d8 ) ] c4 | % 70
  d2 \fermata \bar "|."
}


bass =  \relative bes, {
  \clef "bass" \key bes \major \time 3/4
  \partial 4 r4 | % 1
  R2.*6 | % 7
  R2.*2 | \barNumberCheck #9
  r4 r4 bes4\ff  | % 10
  f'4 f4 d4 | % 11
  g4 c4 c,4 | % 12
  f2 a4 | % 13
  bes4 a8 [ a8 ] g8 [ g8 ] | % 14
  f4 f8([ es8)] d8 [ d8 ] | % 15
  es8([ d8)] c4 f4 | % 16
  bes,2. ~ | % 17
  bes2 bes4 | % 18
  es4 es8 [ f8 ] es8 [ d8 ] | \barNumberCheck #19
  c4 c4 e4 | % 20
  f4 f8 [ g8 ] f8 [ es8 ] | % 21
  d8 ( [ e8 ) ] fis4 d4 | % 22
  g4. f8 es8 [ d8 ] | % 23
  es8 ( [ d8 ) ] c4 f4 | % 24
  bes,2 f'4 | % 25
  bes4 bes4 bes,4 | % 26
  f'2 f4 | % 27
  bes4 c4 c,4 | % 28
  f2 a4 | \barNumberCheck #29
  bes4 a8 [ a8 ] g8 [ g8 ] | % 30
  f4 f8 ( [ es8 ) ] d8 [ d8 ] | % 31
  es8([ d8)] c4 f4 | % 32
  bes,4 ( d4 ) f8. [ f16 ] | % 33
  bes2 ( bes,4 ) | % 34
  es2 ( g4 ) | % 35
  c2 c,4 | % 36
  f4 f4 a8. [ a16 ] | % 37
  bes4 bes4 bes,8 [ bes8 ] | % 38
  es4 es4 d4 | \barNumberCheck #39
  c2 es4 | % 40
  d4 es4 c4 | % 41
  bes4 bes'4 ( c4 ) | % 42
  d4 d4 d,4 | % 43
  g4 c4 bes4 | % 44
  a4 ( g4 ) f4 | % 45
  bes4 es8 [ es8 ] d8 [ d8 ] | % 46
  c4. bes8 a8 [ a8 ] | % 47
  g8 ( [ f8 ) ] es8 ( [ d8 ) ] c4 | % 48
  bes8 ( [ c8 ] d8 [ es8 ) ] f8. [ f16 ] | \barNumberCheck #49
  bes4 -> bes4 -> r4 | % 50
  es,4 -> es4 -> r4 | % 51
  c4 -> c4 -> r4 | % 52
  f4 -> f4 -> a8. [ a16 ] | % 53
  | % 53
  bes4^\< bes4 <bes, bes'>8. [ <bes bes'>16 ] | % 54
  | % 54
  <es bes'>4^\!^\> es4 d4^\! | % 55
  es8 ( [ d8 ) ] c4 f4 | % 56
  bes4 ( d4 ) c4 | % 57
  bes4 bes4 bes,4 | % 58
  f'8 ( [ g8 ] f8 [ es8 ) ] d8 ( [ c8 ) ] | \barNumberCheck #59
  d4 c4 c'8 ( [ bes8 ) ] | % 60
  a4( g4) 
    %\once \override TextScript #'extra-offset = #'(0 . 3.3) 
    %\once \override TextScript #'layer = #100
    f4-\markup{ 
      \halign #1.4 \italic {subito} \dynamic pp
    } | % 61
  bes4 a8 [ a8 ] g8 [ g8 ] | % 62
  f4 f8 ( [ es8 ) ] d8 [ d8 ] | % 63
  | % 63
  es4-\markup{ \halign #0 \italic {accel.} } 
    c4 f4 | % 64
  d4 ( g4 ) es4 | % 65
  as4 f4 bes4 | % 66
  es2 
    \once \override TextScript #'extra-offset = #'(-7 . 0)
    es4-\markup{ \halign #-1 \italic {molto rall.} } | % 67
  d4 es8 [ d8 ] c8 [ c8 ] | % 68
  bes4 g4 d8 [ d8 ] | \barNumberCheck #69
  es8 ( [ d8 ) ] c4 f4 | % 70
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

  For we all like fig -- gy pud -- ding,
  we all like fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
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

  For we all like fig -- gy pud -- ding,
  we all like fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
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
  good ti -- dings we bring;
  We wish you a mer -- ry Christ -- mas,
  and a hap -- py New Year. 

  Now bring us some fig -- gy pud -- ding,
  now bring us some fig -- gy pud -- ding,
  now bring us some fig -- gy pud -- ding,
  and bring some out here.

  Good ti -- dings we bring 
  to you and your kin; 
  We wi -- i -- ish you a hap -- py New Year. 

  For we all like fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
  so bring some out here. __

  Good __ ti -- dings we bring 
  to your kin; 
  We wish you a hap -- py New Year. 

  And we won’t go won’t go 
  won’t go won’t go 
  And we won’t go till we’ve got some, 
  so bring some out here. 

  Good ti -- dings we bring 
  to you and your kin; 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,
  a hap -- py New Year. 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 
}

verseOneBass = \lyricmode {
  Good ti -- dings,
  good ti -- dings we bring;
  We wish you a mer -- ry Christ -- mas,
  and a hap -- py New Year. __

  Now bring us some fig -- gy pud -- ding,
  now bring us some fig -- gy pud -- ding,
  now bring us fig -- gy pud -- ding out here.

  Good ti -- dings we bring 
  to you and your kin; 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year.

  For we all __ like __ fig -- gy pud -- ding,
  for we all like fig -- gy pud -- ding,
  so bring some, bring some out here.

  Good __ ti -- dings we bring 
  to your kin; 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. __

  And we won’t go won’t go 
  won’t go won’t go 
  And we won’t go till we’ve got some, 
  so bring some out here. 

  Good ti -- dings we bring 
  to you and your kin; 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year,
  a hap -- py New Year. 
  We wish you a mer -- ry Christ -- mas, 
  and a hap -- py New Year. 

}
