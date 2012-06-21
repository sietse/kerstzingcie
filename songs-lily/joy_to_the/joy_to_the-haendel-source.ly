% vim: set fileformat=dos:
soprano =  \relative d'' {
  \autoBeamOff
  \clef "treble" \key d \major \time 2/4 | % 1
  d4 \f cis8. b16 | % 2
  a4. g8 | % 3
  fis4 e4 | % 4
  d4. a'8 | % 5
  b4. b8 | % 6
  cis4. cis8 | % 7
  d4. d8 | % 8
  d8 [ cis8 ] b8 [ a8 ] | % 9
  a8. [ g16 fis8 ] d'8 | \barNumberCheck #10
  d8[ cis8] b8[ a8] | % 11
  a8.[ g16 fis8] fis8 \p | % 12
  fis8 fis8 fis8 fis16[ g16] | % 13
  a4. g16[ fis16] | % 14
  e8 e8 e8 e16[fis16] | % 15
  g4.\< fis16[\!\f e16] | % 16
  d8\( d'4\) b8 | % 17
  a8.\([ g16] fis8\) g8 | % 18
  fis4 e4 | % 19
  d2 \bar "|."
}

alto = \relative fis' {
  \autoBeamOff
  \clef "treble" \key d \major \time 2/4
  fis4 a8. g16 | % 1
  fis4. e8 | % 2
  d4 cis4 | % 3
  d4. d8 | % 4
  g4. g8 | % 5
  e4. e8 | % 6
  fis4. fis8 | % 7
  fis8 [ a8 ] g8 [ fis8 ] | % 8
  fis8. [ e16 d8 ] fis8 | \barNumberCheck #10
  fis8 [ a8 ] g8 [ fis8 ] | % 10
  fis8. [ e16 d8 ] d8 | % 11
  d8 d8 d8 d16 [ e16 ] | % 12
  fis4. e16[ d16 ] | % 13
  cis8 cis8 cis8 cis16 [ d16 ] | % 14
  e4. d16[ cis16] | % 15
  d8\( fis4\) g8 | % 16
  fis8.[ e16] d8 e8 | % 17
  d4 cis4 | % 18
  d2 \bar "|."
}

tenor = \relative d' {
  \autoBeamOff
  \clef "bass" \key d \major \time 2/4 | % 1
  d4^\f 
    d8. d16 | % 2
  d4. b8 | % 3
  a4. g8 | % 4
  fis4. d'8 | % 5
  d4. d8 | % 6
  a4. a8 | % 7
  a4. a8 | % 8
  a4 d4 | % 9
  d4. a8 | \barNumberCheck #10
  a4 d4 | % 11
  d4. r8^\p | % 12
  r4 r8 a8 | % 13
  a8 a8 a8 a8 | % 14
  % Slight hackery to get some extra space above. Ought to use
  % \pad-to-box #'(X . X)  #'(Y . Y).
  a2^\markup{\column {
    " "
    \concat { sing,\draw-line #'(20 . 0) }
  } } ~ | % 15
  a4. a16 [ g16 ] | % 16
  fis8\( a4\) 
  % Hackery: The fortissimo mark is officially below the staff so that
  % it will force less vertical space, but is offset to above the staff.
  \once \override DynamicText #'extra-offset = #'(-2.5 . 10)
    d8_\f | %17
  d4. b8 | % 18
  a4 a8 [ g8 ] | % 19
  fis2 \bar "|."
}

bass = \relative d {
  \autoBeamOff
  \clef "bass" \key d \major \time 2/4 |
  d4 d8. d16 | % 1
  d4. g,8 | % 2
  a4 a4 | % 3
  d4. fis8 | % 4
  g4. g8 | % 5
  a4. a8 | % 6
  % King. Let
  d,4. d8 | % 7
  % ev' -- ry __
  d4 d4 | % 8
  % heart __ pre --
  d4. d8 | \barNumberCheck #10
  % pare him
  d4 d4  | % 10
  d4. r8 | % 11
  r4 r8 d8 | % 12
  d8 d8 d8 d8 | % 13
  a'4. a,8 | % 14
  a8 a8 a8 a8 %s4. | % 15
  d4. d8 | % 16
  d4. g,8 | % 17
  a4 a4 | % 18
  d2 \bar "|."
}

verseOne = \lyricmode {
  Joy to the world! 
  the Lord is come:
  Let earth re -- ceive her King; 
  Let ev __ -’ry __ heart __ 
  pre -- pare __ him __ room, __
  And heav’n and na -- ture __ sing,
  And heav’n and na -- ture __ sing,
  And hea -- ven, and hea -- ven, 
  and na -- ture __ sing,
}

verseTwo = \lyricmode {
  Joy to the world! 
  the Sa -- viour reigns;
  Let men their songs em -- ploy;
  While fields __ and __ floods, __
  rocks, hills, __ and __ plains __
  Re -- peat the soun -- ding __ joy,
  Re -- peat the soun -- ding __ joy,
  Re -- peat, __ _ re -- peat __ _
  the soun -- ding __ joy.
}

verseThree = \lyricmode {
  No more let sins and sor -- rows grow,
  Nor thorns in -- fest the ground;
  He comes __ to __ make __
  His bles __ -sings __ flow __
  Far as the curse is __ found,
  Far as the curse is __ found,
  Far as, __ _ far as, __ _
  the curse is __ found.
}

verseFour = \lyricmode {
  He rules the world 
  with truth and grace,
  And makes the na -- tions prove
  The glo __ -ries __ of __
  His right -- eous -- ness, __
  And won -- ders of His __ love,
  And won -- ders of His __ love,
  And won __ _ "- ders," won __ _ "- ders," 
    of His __ love.
}

skipTillBassPart = \lyricmode {
  \skip4 \skip4 \skip4 \skip4
  \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 
}

verseOneBass = \lyricmode {
  \skipTillBassPart
  And heav’n and na -- ture sing, 
  And heav’n and na -- ture sing, 
  And heav’n and na -- ture sing. 
}

verseTwoBass = \lyricmode {
  \skipTillBassPart
  Re -- peat the soun -- ding joy,
  Re -- peat the soun -- ding joy,
  Re -- peat the soun -- ding joy.
}

verseThreeBass = \lyricmode {
  \skipTillBassPart
  Far as the curse is found,
  Far as the curse is found,
  Far as the curse is found.
}

verseFourBass = \lyricmode {
  \skipTillBassPart
  And won -- ders of His love,
  And won -- ders of His love,
  And won -- ders of His love.
}
