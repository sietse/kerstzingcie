% vim: set fileformat=dos:
\version "2.12.3"

miditempo = #(ly:make-moment 63 4)

sopranoVerse = \relative d' {
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
}
sopranoChorus = \relative e' {
  e'4 e4 | % 6
  d4. g,8 c4 c4 | % 7
  b4 ~ b4 e4 e4 | % 8
  d4. b8 b8[ a8] g8[ fis8] | % 9
  g4 ~ g4 \bar "|."
}
soprano = { \sopranoVerse \sopranoChorus }
sopranoMidi = { \sopranoVerse \sopranoVerse \sopranoChorus }

altoVerse = \relative d' {
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
}
altoChorus = \relative e' {
  e8[ fis8] g8[ a8] | % 6
  d,4 d4 e4 fis4 | % 7
  g4( fis4) e8[ fis8] g8[ a8] | % 8
  % If melisma is created by manual beams rather than a slur, 
  % the lyric is placed under the first note only.
  \once \override Slur #'transparent = ##t
  d,8[( fis8 g8]) g8 e4 d4 | % 9
  d4 ~ d4 \bar "|."
}
alto = { \altoVerse \altoChorus }
altoMidi = { \altoVerse \altoVerse \altoChorus }

tenorVerse = \relative b {
  \autoBeamOff
  \clef "bass" \key g \major \time 4/4 \partial 2 \repeat volta 2 {
    b4 c4 | % 1
    d4 b4 a4 g4 | % 2
    fis4 g4 b4 d4 | % 3
    a4 b8[ d8] d8[ c8] b8[ a8] | % 4
    b2 
  }
}
tenorChorus = \relative g {
  g4 c4 | % 6
  b4 b4 c4 d4 | % 7
  d4 ~ d4 c4 c4 | % 8
  b8[ c8 d8] d8 d8[ c8] b8[ a8] | % 9
  \tieNeutral
  <g b>4 ~ <g b>4 \bar "|."
}
tenor = { \tenorVerse \tenorChorus }
tenorMidi = { \tenorVerse \tenorVerse \tenorChorus }

bassVerse = \relative c' {
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
}
bassChorus = \relative c' {
  c,8[ d8] e8[ fis8] | % 6
  g4 b4 a4 d,4 | % 7
  g4 ~ g4 c,8[ d8] e8[ fis8] | % 8
  g8[ a8 b8] g8 c,4 d4 | % 9
  g,4 ~ g4 \bar "|."
}
bass = { \bassVerse \bassChorus }
bassMidi = { \bassVerse \bassVerse \bassChorus }

dropLyrics = {
    \override LyricText #'extra-offset = #'(0 . -2)
    \override LyricHyphen #'extra-offset = #'(0 . -2)
    \override LyricExtender #'extra-offset = #'(0 . -2)
}
raiseLyrics = {
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

verseOne = \lyricmode {
  \set stanza = #"1. "
  Once in roy -- al Da -- vid’s ci -- ty 
  stood a low -- ly cat -- tle shed, 
  \dropLyrics
  Ma -- ry was that mo -- ther 
  \raiseLyrics
  mild, __
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
  \dropLyrics
  With the poor and mean and 
  \raiseLyrics
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
  \dropLyrics
  and he fee -- leth for our 
  \raiseLyrics
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
  \dropLyrics
  and he leads his chil -- dren 
  \raiseLyrics
  on __
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
