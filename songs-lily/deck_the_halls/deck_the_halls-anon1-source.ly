% vim: set fileformat=dos:

\version "2.12.3"

soprano = {
  \autoBeamOff
  \key f \major \time 4/4 | % 1
  \tag #'score { \tempo 2=116 }
  \tag #'midi { \tempo 4.=116 }
  c''4. bes'8 a'4 g'4 | % 2
  f'4 g'4 a'4 f'4 | % 3
  g'8 a'8 bes'8 g'8 a'4. g'8 | % 4
  f'4 e'4 f'2 | % 5
  c''4. bes'8 a'4 g'4 | % 6
  f'4 g'4 a'4 f'4 | % 7
  g'8 a'8 bes'8 g'8 a'4. g'8 | % 8
  f'4 e'4 f'2 | % 9
  g'4. a'8 bes'4 g'4 | \barNumberCheck #10
  a'4. bes'8 c''4 g'4 | % 11
  a'8[ b'8] c''4 d''8[ e''8] f''4 | % 12
  e''4 d''4 c''2 | % 13
  c''4. bes'8 a'4 g'4 | % 14
  f'4 g'4 a'4 f'4 | % 15
  < 
    g' \tweak #'font-size #-3 bes'
  >8 
  <
    d'' \tweak #'font-size #-3 f''
  >8 
  <
    bes' \tweak #'font-size #-3 d''
  >8 
  <
    g' \tweak #'font-size #-3 bes'
  >8 
  a'4. g'8 | % 16
  f'4 e'4 f'2 \bar "|."
}

alto = {
  \autoBeamOff
  \key f \major \time 4/4 | % 1
  a'4. g'8 f'4 e'4 | % 2
  f'4 e'4 f'4 f'4 | % 3
  d'8 d'8 d'8 d'8 f'4. d'8 | % 4
  c'4 c'4 c'2 | % 5
  f'4. g'8 f'4 d'4 | % 6
  c'4 g'4 f'4 c'4 | % 7
  d'8 d'8 d'8 d'8 f'8[ e'8] d'8[ f'8]
  c'4 c'4 c'2 | % 9
  e'4. f'8 g'4 e'4 | \barNumberCheck #10
  f'4. f'8 f'4 e'4 | % 11
  a'4 g'4 a'4 f'4
  g'4 f'4 e'2 | % 13
  a'4. g'8 f'4 e'4 | % 14
  f'4 e'4 f'4 f'4 | % 15
  d'8 d'8 d'8 d'8 f'8[ e'8] d'8[ f'8]
  c'4 c'4 c'2 \bar "|."
}

tenor = {
  \autoBeamOff
  \clef "bass" \key f \major \time 4/4 
  c'4. c'8 c'4 bes4 | % 2
  a4 c'4 c'4 c'4 | % 3
  bes8 bes8 bes8 bes8 c'4. d'8 | % 4
  c'4 c'4 a2 | % 5
  c'4. c'8 c'4 bes4 | % 6
  a4 c'4 c'4 c'4 | % 7
  bes8 bes8 bes8 bes8 d'4. d'8 | % 8
  c'4 g4 a2 | % 9
  c'4. c'8 c'4 c'4 | \barNumberCheck #10
  c'4. c'8 c'4 c'4 | % 11
  f'4. e'8 d'8[ c'8] b8[ a8] | % 12
  c'4 b4 c'2 | % 13
  c'4. c'8 c'4 bes4 | % 14
  a4 c'4 c'4 c'4 | % 15
  bes8 bes8 bes8 d'8 c'4. d'8 | % 16
  g4 g4 a2 \bar "|."
}

bass = {
  \autoBeamOff
  \clef "bass" \key f \major \time 4/4 
  f4. f8 f4 f4 | % 2
  f4 c4 f4 a4 | % 3
  bes8 a8 g8 bes8 a4. bes8 | % 4
  c'4 c4 f2 | % 5
  d4. e8 f4 g4 | % 6
  a4 e4 f4 a4 | % 7
  bes8 a8 g8 bes8 d'8[ c'8] bes4
  c'4 c4 f2 | % 9
  c4. c8 c4 c4 | \barNumberCheck #10
  f4. g8 a4 c'4 | % 11
  d4 e4 f4 d4
  g4 g4 c2 | % 13
  f4. f8 f4 f4 | % 14
  f4 c4 f4 a,4 | % 15
  bes,8 a,8 g,8 bes,8 d8[ c8] bes,4
  c4 c4 f2 \bar "|."
}

    italic = { % italic
      \override Lyrics.LyricText #'font-shape = #'italic
    }

    normal = { % text face
      \revert Lyrics.LyricText #'font-shape
    }

verseOne = \lyricmode {
  Deck the halls with boughs of hol -- ly, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4
  "’t Is" the sea -- son to be jol -- ly, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4
  Don we now our gay ap -- pa -- rel, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
  Troll the an -- cient Yule -- tide ca -- rol, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
}

verseTwo = \lyricmode {
  See the bla -- zing Yule be -- fore us, 
  \italic Fa la la la la, fa la, la, la, \normal
  Strike the harp and join the cho -- rus, 
  \italic Fa la la la la, __ fa __ la, la, la, \normal
  Fol -- low me in mer -- ry mea -- sure, 
  \italic 
    \once \override LyricText #'self-alignment-X = #-1
      \markup{ Fa\draw-line #'(2 . 0) }  
    la, 
    \once \override LyricText #'self-alignment-X = #-1
      \markup{ la \draw-line #'(2 . 0) }  
    la, la, la, la, \normal
  While I tell of Yule -- tide trea -- sure, 
  \italic Fa la la la la, __ fa __ la, la, la. \normal
}

verseThree = \lyricmode {
  Fast a -- way the old year pas -- ses, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4
  Hail the new, ye lads and las -- ses, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4
  Sing we jo -- yous all to -- ge -- ther, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
  Heed -- less of the wind and wea -- ther, 
  \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 
  \skip4 \skip4 \skip4
}
