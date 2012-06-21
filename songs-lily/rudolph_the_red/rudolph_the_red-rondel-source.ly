% vim: set fileformat=dos:

soprano =  \relative a' {
  \dynamicUp
  \clef "treble" \key c \major \numericTimeSignature\time 4/4 
  \oneVoice
  \partial 4 a8 _\markup{ \italic {dolce} } ^"(alten)" [ b8 ] | % 1
  c8 a4 f8 b8 g4 e8 | % 2
  a8 f4 d8 a'8 g4. | % 3
  c8 a4 f8 b8 g4 e8 | % 4
  a8 f4 d8 a'8 g4. | % 5
  e4 e4 e4 e4 | % 6
  a2. a8 [ b8 ] | % 7
  c4 c4 c8 b4 a8 | % 8
  g2. r4 \bar "||"
  | % 9
  \break
  \time 2/2  | % 9
  %R1 | \barNumberCheck #10
  R1^\markup{ \bold {Presto}
    \concat {
        (
        \smaller \general-align #Y #DOWN \note #"4" #1
        " = c."
        160
        )
      }
  }
  r2
  \voiceOne
  a4\mf c4 | % 11
  | % 11
  \oneVoice
  g8 \f [ a8 g8 a8 ] g4 c4 | % 12
  b1 | % 13
  R1*2 | % 15
  \voiceOne
  g8 [ a8 g8 a8 ] g4 a4 | % 16
  e1 | % 17
  | % 17
  g8 \f [ a8] s8 g8 e4 c'4 | % 18
  a4 g2. | % 19
  g8 [ a8 g8 a8 ] g4 c4 | \barNumberCheck #20
  b4-. 
  \oneVoice
  gis4-> f4->\mf g4 | % 21
  d'4 cis4 c4 b4 | % 22
  bes4 a4 gis4 g4 | % 23
  g8 [ a8 g8 a8 ] g4 d'4 | % 24
  c1 \bar "||"
  \voiceOne
  f,4 \mp f4 a4 f4 | % 26
  e4 g8 [ e8 ] ~ e2 | % 27
  d4 f4 e4 d8 [ c8 ~ ] | % 28
  c1 | % 29
  \oneVoice
  d4 e4 g4 a4 | \barNumberCheck #30
  b4 b8 [ b8 ~ ] b2 | % 31
  R1*2 | % 33
  \voiceOne
  g8 [ a8 s8 g8 ] e4 c'4 | % 34
  a4 g2. | % 35
  g8 [ a8 g8 a8 ] g4 c4 | % 36
  b1 | % 37
  \oneVoice
  R1*2 | % 39
  \voiceOne
  | % 39
  g4 \f a4 g4 a4 | \barNumberCheck #40
  g2 b2 | % 41
  g'2. \bar "|."
}

alto =  \relative a' {
  \clef "treble" \key c \major \numericTimeSignature\time 4/4 
  \partial 4 a8 _\markup{ \italic {dolce} } ^"(alten)" [ b8 ] | % 1
  c8 a4 f8 b8 g4 e8 | % 2
  a8 f4 d8 a'8 g4. | % 3
  c8 a4 f8 b8 g4 e8 | % 4
  a8 f4 d8 a'8 g4. | % 5
  e4 e4 e4 e4 | % 6
  a2. a8 [ b8 ] | % 7
  c4 c4 c8 b4 a8 | % 8
  g2. r4 \bar "||" |% 9
  \time 2/2  
  | % 9
   R1 | \barNumberCheck #10
  b2 \rest ^\markup{ \bold {Presto} } e,4 \mf c4 | % 11
  | % 11
  g'8 \f [ a8 g8 a8 ] g4 c4 | % 12
  b1 | % 13
  R1*2 | % 15
  e,8 [ f8 e8 f8 ] dis4 b4 | % 16
  c1 | % 17
  | % 17
  e8 \f [ d8] r8 c8 g4 e'4 | % 18
  c4 c2. | % 19
  e8 [ f8 e8 f8 ] e4 a4 | \barNumberCheck #20
  g4 _. gis4 _> f4 \mf _> g4 | % 21
  d'4 cis4 c4 b4 | % 22
  bes4 a4 gis4 g4 | % 23
  g8 [ a8 g8 a8 ] g4 d'4 | % 24
  c1 \bar "||"
  | % 25
  | % 25
  d,4 \mp d4 f4 d4 | % 26
  c4 b8 [ c8 ] ~ c2 | % 27
  a4 a4 b4 b8 [ c8 ~ ] | % 28
  c1 | % 29
  d4 e4 g4 a4 | \barNumberCheck #30
  b4 b8 [ b8 ~ ] b2 | % 31
  R1*2 | % 33
  e,8 [ f8] r8 e8 c4 e4 | % 34
  f4 e2. | % 35
  e8 [ f8 e8 f8 ] e4 es4 | % 36
  d1 | % 37
  R1*2 | % 39
  | % 39
  d4 \f e4 d4 e4 | \barNumberCheck #40
  d2  <g b>2 | % 41
  <c e>2. 
  \bar "|."
}

altoClean =  \relative a' {
  \clef "treble" \key c \major \numericTimeSignature\time 4/4 
  %\partial 4 a8 [ b8 ] | % 1
  %c8 a4 f8 b8 g4 e8 | % 2
  %a8 f4 d8 a'8 g4. | % 3
  %c8 a4 f8 b8 g4 e8 | % 4
  %a8 f4 d8 a'8 g4. | % 5
  %e4 e4 e4 e4 | % 6
  %a2. a8 [ b8 ] | % 7
  %c4 c4 c8 b4 a8 | % 8
  %g2. r4 \bar "||"
  \partial 4 s8  s8 | % 1
  s8 s4 s8 s8 s4 s8 | % 2
  s8 s4 s8 s8 s4. | % 3
  s8 s4 s8 s8 s4 s8 | % 4
  s8 s4 s8 s8 s4. | % 5
  s4 s4 s4 s4 | % 6
  s2. s8 s8 | % 7
  s4 s4 s8 s4 s8 | % 8
  s2. s4 \bar "||"
  | % 9
  \time 2/2  | % 9
   s1 | \barNumberCheck #10
  s2 e4 c4 | % 11
  | % 11

  %g'8 [ a8 g8 a8 ] g4 c4 | % 12
  %b1 | % 13
  s8 s8 s8 s8 s4 s4 | % 12
  s1 | % 13

  s1*2 | % 15
  e='8 [ f8 e8 f8 ] dis4 b4 | % 16
  c1 | % 17
  | % 17
  e8[ d8] r8 c8 g4 e'4 | % 18
  c4 c2. | % 19
  e8 [ f8 e8 f8 ] e4 a4 | \barNumberCheck #20
  g4 _. 
    %gis4 _> f4_> g4 | % 21
  %d'4 cis4 c4 b4 | % 22
  %bes4 a4 gis4 g4 | % 23
  %g8 [ a8 g8 a8 ] g4 d'4 | % 24
  %c1 \bar "||"
    s4 s4 s4 | % 21
  s4 s4 s4 s4 | % 22
  s4 s4 s4 s4 | % 23
  s8 s8 s8 s8 s4 s4 | % 24
  s1 \bar "||"
  | % 25
  d='4 d4 f4 d4 | % 26
  c4 b8 [ c8 ] ~ c2 | % 27
  a4 a4 b4 b8 [ c8 ~ ] | % 28
  c1 | % 29

  %d4 e4 g4 a4 | \barNumberCheck #30
  %b4 b8 [ b8 ~ ] b2 | % 31
  s4 s4 s4 s4 | \barNumberCheck #30
  s4 s8 s8 s2 | % 31

  s1*2 | % 33
  e='8[ f8] r8 e8 c4 e4 | % 34
  f4 e2. | % 35
  e8 [ f8 e8 f8 ] e4 es4 | % 36
  d1 | % 37
  s1*2 | % 39
  | % 39
  d4 e4 d4 e4 | \barNumberCheck #40
  d2  <g b>2 | % 41
  <c e>2. 
  \bar "|."
}

tenor =  \relative g {
  \clef "treble_8" \key c \major \numericTimeSignature\time 4/4
  \partial 4 r4 -\markup{ \italic {Rubato} } | % 1
  R1*8 \bar "||"
  | % 9
  \time 2/2  | % 9
  g8 \f [ a8] r8 g8 e4 c'4 | \barNumberCheck #10
  a4 g2. | % 11
  R1 | % 12
  | % 12
  r4 \mf g8 [ gis8 ] a8 ( [ gis8 g8 ) ] r8 | % 13
  | % 13
  f8 \f [ g8] r8 f8 d4 b'4 | % 14
  a4 g2. | % 15
  g8 [ a8 g8 a8 ] b4 b4 | % 16
  c4 ( g2. ) | % 17
  | % 17
  c4. \mf d8 ~ d4 b4 | % 18
  c4 e2. | % 19
  e8 [ e8 e8 e8 ] e4 es4 | \barNumberCheck #20
  d4 -. g4 -> e4 \f -> g,4 | % 21
  f8[ g8] r8 f8 d4 b'4 | % 22
  a4 g2. | % 23
  g4 g4 a4 b4 | % 24
  c4 g4 c,4 r4 \bar "||"
  | % 25
  | % 25
  a'4 \mf a4 c4 a4 | % 26
  g4 e8 [ g8 ~ ] g2 | % 27
  f4 a4 g4 f8 [ e8 ( ~ ] | % 28
  e4 g2. ) | % 29
  d4 e4 g4 a4 | \barNumberCheck #30
  b4 b8 [ b8 ~ ] b2 | % 31
  c4 c4 b4 a4 | % 32
  g4 f8 [ d8 ~ ] d2 | % 33
  g8[ a8] r8 g8 e4 c'4 | % 34
  a4 g2. | % 35
  g8 [ a8 g8 a8 ] g4 c4 | % 36
  b1 | % 37
  R1*2 | % 39
  | % 39
  d4 \f c4 b4 a4 | \barNumberCheck #40
  g2 d'2 | % 41
  e2. \bar "|."
}

bass =  \relative g {
  \clef "bass" \key c \major \numericTimeSignature\time 4/4 \partial 4
  r4 -\markup{ \italic {Rubato} } | % 1
  R1*8 \bar "||"
  | % 9
  \time 2/2  | % 9
  g8 \f [ a8] r8 g8 e4 c'4 | \barNumberCheck #10
  a4 g2. | % 11
  R1 | % 12
  s4 \mf g8 [ gis8 ] a8 ( [ gis8 g8 ) ] s8 | % 13
  | % 13
  f8 \f [ g8] r8 f8 d4 b'4 | % 14
  a4 g2. | % 15
  g8 [ a8 g8 a8 ] g4 g4 | % 16
  c4 ( b4 a4 g4 ) | % 17
  | % 17
  c2 \mf g4 g4 | % 18
  c4. g8( ~ g4 b4) | % 19
  c8 c8 c8 c8 g4 fis4 | \barNumberCheck #20
  g4 r4 r4 \f g4 | % 21
  f8 [ g8] r8 f8 d4 b'4 | % 22
  f4 f2. | % 23
  g4 g4 a4 b4 | % 24
  c4 g4 c,4 r4 \bar "||"
  | % 25
  | % 25
  c'4 \mp c4 d4 c4 | % 26
  c4 c8 [ c8 ~ ] c2 | % 27
  d4 d4 g,4 g8 [ c8 ( ~ ] | % 28
  c2 cis2 ) | % 29
  d,4 e4 g4 a4 | \barNumberCheck #30
  b4 b8 [ b8 ~ ] b2 | % 31
  c4 c4 b4 a4 | % 32
  g4 f8 [ d8 ~ ] d2 | % 33
  c'4. g8 ~ g4 g4 | % 34
  c4. g8 ~ g4 g4 | % 35
  c4 c4 r4 es4 | % 36
  d4 b4 a4 g4 | % 37
  f8[ g8] r8 f8 d4 b'4 | % 38
  a4 g2. | % 39
  | % 39
  g4 \f a4 g4 a4 | \barNumberCheck #40
  g2 g2 | % 41
  c2. \bar "|."
}

verseOne = \lyricmode {
}
verseOneSoprano =  \lyricmode { 
  You know Das -- her and Dan -- cer
  and Pran -- cer and Vi -- xen, 
  Co -- met and Cu -- pid 
  and Don -- ner and Blit -- zen, 
  but do you re -- call the most fa -- mous rein --
  deer of all? 
  Rein -- deer! had a ve -- ry shi -- ny nose, 
  you would e -- ven say it glows, __
  all of the o -- ther rein -- deer, 
  used to laugh and call him names. 
  \markup { \italic Red } \markup { \italic nose! }
  They ne -- ver let the rein -- deer Ru -- dolph 
  join in a -- ny rein -- deer games. 
  Then one fog -- gy Christ -- mas Eve,
  San -- ta came to say: __ 
  “Ru -- dolph with your nose so bright, 

  Then all the rein -- deer loved him, 
  as they shou -- ted out with glee: 

  “You’ll go down in his -- to -- ry!”
}

verseOneAlto =  \lyricmode { 
  You know Das -- her and Dan -- cer
  and Pran -- cer and Vi -- xen, 
  Co -- met and Cu -- pid 
  and Don -- ner and Blit -- zen, 
  but do you re -- call the most fa -- mous rein --
  deer of all? 
  Rein -- deer! had a ve -- ry shi -- ny nose, 
  you would e -- ven say it glows, __
  all of the o -- ther rein -- deer, 
  used to laugh and call him names. 
  \markup { \italic Red } \markup { \italic nose! }
  They ne -- ver let the rein -- deer Ru -- dolph 
  join in a -- ny rein -- deer games. 
  Then one fog -- gy Christ -- mas Eve,
  San -- ta came to say: __ 
  “Ru -- dolph with your nose so bright, 

  Then all the rein -- deer loved him, 
  as they shou -- ted out with glee: 

  “You’ll go down in his -- to -- ry!”
}

verseOneTenor = \lyricmode { 
  Ru -- dolph the red -- nosed rein -- deer, 
  Shi -- ny nose __ 
  And if you e -- ver saw it, 
  you would e -- ven say it glows, __
  all o -- ther rein -- deer, 
  used to laugh and call him names. 
  \markup { \italic Red } \markup { \italic nose! }
  And they ne -- ver let poor Ru -- dolph 
  join in a -- ny rein -- deer games. 
  Then one fog -- gy Christ -- mas Eve,
  San -- ta came to say: __ 
  “Ru -- dolph with your nose so bright, 
  won’t you guide my sleigh to -- night?” 
  Then all the rein -- deer loved him, 
  as they shou -- ted out with glee: 

  “You’ll go down in his -- to -- ry!”
}

verseOneBass = \lyricmode { 
  Ru -- dolph the red -- nosed rein -- deer, 
  Shi -- ny nose __ 
  And if you e -- ver saw it, 
  you would e -- ven say it glows, __
  all o -- ther rein -- deer, 
  used to laugh and call him names. 

  And they ne -- ver let poor Ru -- dolph 
  join in a -- ny rein -- deer games. 
  Then one fog -- gy Christ -- mas Eve,
  San -- ta came to say: __ 
  “Ru -- dolph with your nose so bright, 
  won’t you guide my sleigh to -- night?” 
  Ru -- dolph, oh Ru -- dolph,
  oh Ru -- dolph
  Doom, doom, doom, doom, doom,
  “Ru -- dolph the red -- nosed rein -- deer,
  you’ll go down in his -- to -- ry!”
}

