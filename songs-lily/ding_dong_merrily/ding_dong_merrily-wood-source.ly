% vim: set fileformat=dos:
\version "2.12.3"

soprano = \relative bes' {
  \clef "treble" 
  \key bes \major 
  \numericTimeSignature\time 4/4 
  bes4 bes4 c8 [ bes8 ] a8 [ g8 ] | % 1
  f2. f4 | % 2
  g4 bes4 bes4 a4 | % 3
  bes2 bes2 | % 4
  bes4 bes4 c8 [ bes8 ] a8 [ g8 ] | % 5
  f2. f4 | % 6
  g4 bes4 bes4 a4 | % 7
  bes2 bes2 | % 8
  \repeat volta 2 {
    f'4.( es8 d8[ es8 f8 d8] | \barNumberCheck #10
    es4. d8 c8 [ d8 es8 c8 ] | % 11
    d4. c8 bes8 [ c8 d8 bes8 ] | % 12
    c4. bes8 a8 [ bes8 c8 a8 ] | % 13
    bes4. a8 g8 [ a8 bes8 g8 ] | % 14
    a4. ) g8 f4 f4 | % 16
    g4 bes4 bes4 a4 | % 17
    bes2 bes2 
  }
}

alto = \relative f' {
  \clef "treble" 
  \key bes \major 
  \numericTimeSignature\time 4/4 
  f4 f4 g8 [ g8 ] es8 [ es8 ] | % 1
  c2. f4 | % 2
  f4 es4 c4 f4 | % 3
  f2 f2 | % 4
  %\break
  f4 f4 g8 [ g8 ] es8 [ es8 ] | % 5
  c2. f4 | % 6
  f4 es4 c4 f4 | % 7
  f2 f2 | % 8
  %\break
  \repeat volta 2 {
    r4 f2 ( bes4 ~ | \barNumberCheck #10
    bes8[ a8 g8 f8] g8[ f8] es4) | % 11
    \break
    r4 f8 ( [ es8 ] d4 f4 | % 12
    g8 [ f8 es8 d8 ] es8 [ d8 ] c4 ) | % 13
    r4 d8 ( [ c8 ] bes4 d4 | % 14
    c4 ) bes4 c4 d4 | % 15
    f4 es4 c4 f4 | % 16
    f2 f2 
  }
}

tenor = \relative d' {
  \clef "treble_8" 
  \key bes \major 
  \numericTimeSignature\time 4/4 
  d4 bes4 g8 [ g8 ] c8 [ bes8 ] | % 1
  a2. bes4 | % 2
  bes4 bes4 c4 c4 | % 3
  d2 d2 | % 4
  d4 bes4 g8 [ g8 ] c8 [ bes8 ] | % 5
  a2. bes4 | % 6
  bes4 bes4 c4 c4 | % 7
  d2 d2 | % 8
  \repeat volta 2 { 
    r4 c4 ( d4 bes4 | \barNumberCheck #10
    c4 bes2 c4 ) | % 11
    r4 a4 ( bes4 g4 | % 12
    a4 g2 a4 ) | % 13
    r4 f4 ( g2 | % 14
    f4 ) bes4 c4 d4 | % 15
    bes4 bes4 c4 c4 | % 16
    d2 d2 
  }
}

bass = \relative bes, {
  \clef "bass" 
  \key bes \major 
  \numericTimeSignature\time 4/4 
  bes4 d4 es8 [ es8 ] c8 [ c8 ] | % 1
  f2. d4 | % 2
  es4 g4 f4 f4 | % 3
  bes,2 bes2 | % 4
  bes4 d4 es8 [ es8 ] c8 [ c8 ] | % 5
  f2. d4 | % 6
  es4 g4 f4 f4 | % 7
  bes,2 bes2 | % 8
  \repeat volta 2 { 
    r4 a'4 ( bes4 d,4 | \barNumberCheck #10
    c4 d4 es8 [ d8 ] c4 ) r4 f4 ( g4 bes,4 | % 12
    a4 bes4 c8 [ bes8 ] a4 ) r4 d4 ( es4 c4 | % 14
    f4 ) g4 a4 bes4 | % 15
    es,4 g4 f4 f4 | % 16
    bes,2 bes2 
  }
}

verseOne = \lyricmode {
  Ding, dong, mer -- ri -- ly on high,
  in heav’n the bells are ring -- ing, 
  Ding, dong, ve -- ri -- ly the sky 
  is rent with an -- gels sing -- ing. 
}

verseTwo = \lyricmode {
  Now on earth be -- low be -- low,
  the stee -- ple bells are ring -- ing,
  And i -- o, i -- o, i -- o, 
  are priest and peo -- ple sing -- ing.
}

verseThree = \lyricmode {
  May -- you  du -- ti -- ful -- ly prime
  your ma -- tin chime, you ring -- ers,
  May you beau -- ti -- ful -- ly rhyme
  your e -- ven -- song, you sing -- ers.
}

verseTwoSoprano = { 
  \verseTwo
  \lyricmode {
    % \set associatedVoice = #"alto" % for ri
    Glo -- ri -- a, ho -- san -- na
    in ex -- cel -- sis.
  }
}

verseTwoOther = {
  \verseTwo
  \lyricmode {
    Glo -- o -- o -- ri -- a, ho -- san -- na
    in ex -- cel -- sis.
  }
}
