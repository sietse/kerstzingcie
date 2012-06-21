% vim: set fileformat=dos:

\version "2.12.3"

soprano = \relative c' {
  \autoBeamOff
  \clef "treble" 
  \key f \major 
  \time 3/4 
  \partial 4 c4
  f4 f4 g8[ a8] | % 2
  f4 f4 a8[ bes8] | % 3
  c4 c4 d4 | % 4
  bes2 g8[ a8] | % 5
  bes4 bes4 c4 | % 6
  a4 a4 f8[ a8] | % 7
  g4 d4 f4 | % 8
  | % 8
  e2 c4^\markup { \halign #'0 \bold "poco cresc"} | % 9
  f4 f4 g8[ a8] | \barNumberCheck #10
  f4 f4 f4 | % 11
  c'4 c4 d4 | % 12
  bes2 g8[ a8] | % 13
  bes4 bes4 c4 | % 14
  a4 a4 f8[ a8] | % 15
  g4 d4 e4 | % 16
  f2 \bar "|."
}

alto = \relative c' {
  \autoBeamOff
  \clef "treble" 
  \key f \major 
  \time 3/4 
  \partial 4 c4 | % 1
  c4 c4 d8[ e8] | % 2
  f4 c4 f8[ g8] | % 3
  a4 a4 a4 | % 4
  g2 d4 | % 5
  g8[ a8] g8[ f8] g4 | % 6
  f4 c4 f4 | % 7
  d4. c8 d4 | % 8
  | % 8
  c2 c4_\markup { \halign #'0 \bold "poco cresc" }
  c4. c8 d8 [ e8 ] | \barNumberCheck #10
  f8[ d8] c4 f8[ g8] | % 11
  a8[ bes8] a8[ g8] f8[ e8] | % 12
  d2 d4 | % 13
  g8[ f8] g8[ e8] f8[ g8] | % 14
  a8[ g8] f8[ e8] d4 | % 15
  d8[ c8] d4 c8[ bes8] | % 16
  a2 \bar "|."
}

tenor = \relative c' {
  \autoBeamOff
  \clef "treble_8" 
  \key f \major 
  \time 3/4 
  \partial 4 c8[ bes8] | % 1
  a4 a4 bes8[ c8] | % 2
  a4 a4 c4 | % 3
  f4. f8 e4 | % 4
  d4( c4) bes8[ a8] | % 5
  g4 c4 g4 | % 6
  c4 c4 d4 | % 7
  b4 a4 b4 | % 8
  c2 c8[ bes8] | % 9
  c8[ bes8] a4 bes8[ c8] | \barNumberCheck #10
  a8[ bes8] c8[ d8] e8[ d8] | % 11
  c4 f,8[ g8] a4 | % 12
  bes8[ c8 d8 c8] bes8[ a8] | % 13
  g4 c4 g4 | % 14
  c4 c4 a4 | % 15
  d4 c8[ bes8] a8[ g8] | % 16
  f2 \bar "|."
}

bass = \relative a {
  \autoBeamOff
  \clef "bass" 
  \key f \major 
  \time 3/4 
  \partial 4 a8[ g8] | % 1
  f4 f4 f4 | % 2
  f4 f4 f4 | % 3
  f4 f4 f4 | % 4
  f2 f4 | % 5
  e4 e4 e4 | % 6
  f4 e4 d4 | % 7
  g4 g4 g4 | % 8
  c,2 c'8[_\markup { \halign #'0 \bold "poco cresc" } bes8] | % 9
  a8[ g8] f8[ e8] d8[ c8] | \barNumberCheck #10
  f8[ g8] a8[ bes8] c8[ bes8] | % 11
  a8[ g8] f8[ e8] d8[ f8] | % 12
  g8[ a8 bes8 a8] g8[ f8] | % 13
  e8[ d8] e8[ c8] d8[ e8] | % 14
  f8[ g8] a4 d,8[ c8] | % 15
  bes4 g4 c4 | % 16
  f,2 \bar "|."
}

verseOne = {
  \set stanza = \markup { \dynamic "pp" "1. " }
  \lyricmode {
    A -- way in a __ man -- ger, 
    no __ crib for a bed, __ the __ 

    lit -- tle Lord Je -- sus laid __ 
    down his sweet head. The __

    stars __ in __ the __ bright __ sky __ shone __
    down where __ he lay. __ The __ 
    
    lit -- tle Lord Je -- sus a --
    sleep on __ the __ hay. 
  }
}

verseTwo = {
  \set stanza = \markup { \dynamic "p" "2. " }
  \lyricmode {  
    The __ cat -- tle are __ low -- ing, the __ 
    ba -- by a -- wakes, __ but __ 

    lit -- tle Lord Je -- sus no __ 
    cry -- ing he makes. I __
    
    love __ thee __ Lord __ Je -- sus! __ Look __
    down from __ the sky. __ And __

    stay by my side un -- til __ 
    morn -- ing __ is __ nigh. 
  }
}

verseThree = {
  \set stanza = \markup { \dynamic "pp" "3. " }
  \lyricmode {
    Be __ near me, Lord __ Je -- sus; I __ 
    ask thee to stay __ close __ 

    by me for e -- ver and __ 
    love me, I pray. Bless __
    
    all __ the __ dear __ chil -- dren __ in __
    thy __ ten -- der care. __ And __ 

    fit us for hea -- ven, to __
    live with __ thee __ there.
  }
}
