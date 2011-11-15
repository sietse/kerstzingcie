% vim: set fileformat=dos:
\version "2.12.3"

soprano = \relative d' {
  \autoBeamOff
  \clef "treble" 
  \key g \major 
  \time 4/4 
  \tempo 4=63 
  \bar "|:"
  \partial 2 \repeat volta 2 {
    d4 fis4 | % 1 
    g4. g8 g8[ fis8] g8[ a8] | % 2
    a4 g4 g4 b4 | % 3
    d4. b8 b8[ a8] g8[ fis8] | % 4
    g2 
  }
  e'4 e4 | % 6
  d4. g,8 c4 c4 | % 7
  b4 ~ b4 e4 e4 | % 8
  d4. b8 b8[ a8] g8[ fis8] | % 9
  g4 ~ g4 \bar "|."
}

alto = \relative d' {
  \autoBeamOff
  \clef "treble" 
  \key g \major 
  \time 4/4 
  \partial 2 \repeat volta 2 {
    \tempo 4=63 d4 fis4 | % 1
    d4 d4 cis4 cis4 | % 2
    d8 [ c8 ] b4 d4 g4 | % 3
    d4 d4 e4 d4 | % 4
    d2 
  }
  e8[ fis8] g8[ a8] | % 6
  d,4 d4 e4 fis4 | % 7
  g4( fis4) e8[ fis8] g8[ a8] | % 8
  % If melisma is created by manual beams rather than a slur, 
  % the lyric is placed under the first note only.
  \once \override Slur #'transparent = ##t
  d,8[( fis8 g8]) g8 e4 d4 | % 9
  d4 ~ d4 \bar "|."
}

tenor = \relative b {
  \autoBeamOff
  \clef "bass" \key g \major \time 4/4 \partial 2 \repeat volta 2 {
    b4 c4 | % 1
    d4 b4 a4 g4 | % 2
    fis4 g4 b4 d4 | % 3
    a4 b8[ d8] d8[ c8] b8[ a8] | % 4
    b2 
  }
  g4 c4 | % 6
  b4 b4 c4 d4 | % 7
  d4 ~ d4 c4 c4 | % 8
  b8[ c8 d8] d8 d8[ c8] b8[ a8] | % 9
  \tieNeutral
  <g b>4 ~ <g b>4 \bar "|."
}

bass = \relative b {
  \autoBeamOff
  \clef "bass" 
  \key g \major 
  \time 4/4 
  \partial 2 \repeat volta 2 {
    b4 a4 | % 1
    b4 g4 e4 a,4 | % 2
    d4 g,4 b'4 g4 | % 3
    fis4 g4 c,4 d4 | % 4
    g2 
  }
  c,8[ d8] e8[ fis8] | % 6
  g4 b4 a4 d,4 | % 7
  g4 ~ g4 c,8[ d8] e8[ fis8] | % 8
  g8[ a8 b8] g8 c,4 d4 | % 9
  g,4 ~ g4 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = #"1. "
  Once in roy -- al Da -- vid’s ci -- ty 
  stood a low -- ly cat -- tle shed, 
  Ma -- ry was that mo -- ther mild, __
  Je -- sus Christ __ her lit -- tle child.
}

verseOneRepeat = \lyricmode {
  where a mo -- ther laid her ba -- by 
  In a man -- ger for his bed: 
}

verseTwo = \lyricmode {
  \set stanza = #"2. "
  He  came down to earth from hea -- ven
  who is God and Lord of all,
  With the poor and mean and 
    \set ignoreMelismata = ##t 
      low -- ly
    \unset ignoreMelismata
  lived on earth __ our Sa -- viour 
    \set ignoreMelismata = ##t 
      ho -- ly.
    \unset ignoreMelismata
}

verseTwoRepeat = \lyricmode {
  and his shel -- ter was a sta -- ble,
  and his cra -- dle was a stall;
}

verseFour = \lyricmode {
  \set stanza = #"4. "
  For he is our child -- hood’s pat -- tern,
  day by day like us he grew,
  and he fee -- leth for our 
    \set ignoreMelismata = ##t 
      sad -- ness,
    \unset ignoreMelismata
  and he sha __ -reth in our 
    \set ignoreMelismata = ##t 
      glad -- ness.
    \unset ignoreMelismata
}

verseFourRepeat = \lyricmode {
  he was lit -- tle, weak, and help -- less,
  tears and smiles like us he knew:
}

verseFive = \lyricmode {
  \set stanza = #"5. "
  And our eyes at last shall see him,
  through his own re -- deem -- ing love
  and he leads his chil -- dren on __
  to the place __ where he is gone.
}

verseFiveRepeat = \lyricmode {
  For that child so dear and gen -- tle
  is our Lord in 
  \set associatedVoice = "vSoprano"
  hea -- 
  % The 'a --' of above should be associated with the soprano
  \set ignoreMelismata = ##t 
    ven 
    a -- 
  \set associatedVoice = "vAlto"
    bove;
  \unset ignoreMelismata
}
