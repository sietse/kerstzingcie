% vim: set fileformat=dos:
women = {
  \clef "treble" \key f \major \time 3/4 \partial 4 a'4 | % 1
  a'4 ( g'4 ) f'4 | % 2
  c''2 a'4 | % 3
  f'4 ( g'4 ) a'4 | % 4
  f'2. | % 5
  <c' c''>2. | % 6
  <d' a'>2. | % 7
  <c' c''>2. | % 8
  <d' a'>2. | % 9
  f'4 g'4 a'4 | \barNumberCheck #10
  <f' c''>4 <g' bes'>4 <f' a'>4 | % 11
  <d' f'>2 <c' e'>4 | % 12
  <c' f'>2 c''4 | % 13
  c''2 bes'4 | % 14
  a'2 <f' d''>4 | % 15
  <<
    { 
    c''4 ( bes'4 ) a'4 }
    \\
    { 
    g'2 fis'4 }
  >> \oneVoice | % 16
  g'2 <e' c''>4 | % 17
  <<
    { \voiceOne
      g'4 ( a'4 ) bes'4 }
    { \voiceTwo
      e'2 f'4 }
  >> \oneVoice | % 18
  <f' c''>2 <d' f'>4 | % 19
  <c' f'>2 <c' e'>4 | \barNumberCheck #20
  <c' f'>2 <f' bes'>4 | % 21
  <<
    { \voiceOne
      bes'4 ( a'4 ) g'4 | % 22
      a'4 ( bes'4 ) c''4 | } % 23
    { \voiceTwo
      f'2 e'4 |
      f'2 f'4 | }
  >> \oneVoice |
  a'2 g'4 | % 24
  f'2 \bar "|."
}
soprano = {
  \clef "treble" \key f \major \time 3/4 \partial 4 a'4 | % 1
  a'4 ( g'4 ) f'4 | % 2
  c''2 a'4 | % 3
  f'4 ( g'4 ) a'4 | % 4
  f'2. | % 5
  c''2. | % 6
  a'2. | % 7
  c''2. | % 8
  a'2. | % 9
  f'4 g'4 a'4 | \barNumberCheck #10
  c''4 bes'4 a'4 | % 11
  f'2 e'4 | % 12
  f'2 c''4 | % 13
  c''2 bes'4 | % 14
  a'2 d''4 | % 15
  c''4 ( bes'4 ) a'4 | % 16
  g'2 c''4 | % 17
  g'4 ( a'4 ) bes'4 | % 18
  c''2 f'4 | % 19
  f'2 e'4 | \barNumberCheck #20
  f'2 bes'4 | % 21
  bes'4 ( a'4 ) g'4 | % 22
  a'4 ( bes'4 ) c''4 | % 23
  a'2 g'4 | % 24
  f'2 \bar "|."
}

alto = {
  \clef "treble" \key f \major \time 3/4 
  \partial 4 a'4 | % 1
  a'4 ( g'4 ) f'4 | % 2
  c''2 a'4 | % 3
  f'4 ( g'4 ) a'4 | % 4
  f'2. | % 5
  c'2. | % 6
  d'2. | % 7
  c'2. | % 8
  d'2. | % 9
  f'4 g'4 a'4 | \barNumberCheck #10
  f'4 g'4 f'4 | % 11
  d'2 c'4 | % 12
  c'2 c''4 | % 13
  c''2 bes'4 | % 14
  a'2 f'4 | % 15
  g'2 fis'4 | %16
  g'2 e'4 | % 17
  e'2 f'4 | % 18
  f'2 d'4 | % 19
  c'2 c'4 | \barNumberCheck #20
  c'2 f'4 | % 21
  f'2 e'4 | % 22
  f'2 f'4 | % 23
  a'2 g'4 | % 24
  f'2 \bar "|."
}

tenor = {
    \clef "bass" \key f \major \time 3/4 
    \partial 4 a4 | % 1
    a4 ( g4 ) f4 | % 2
    c'2 a4 | % 3
    f4 ( g4 ) a4 | % 4
    f2. | % 5
    e2. | % 6
    f2. | % 7
    e2. | % 8
    f2. | % 9
    | % 9
    f4^\< g4 a4 | \barNumberCheck #10
    | \barNumberCheck #10
    a4^\!^\< bes4 c'4 | % 11
    | % 11
    bes2^\!^\> g4^\! | % 12
    a2 c'4 | % 13
    c'2 bes4 | % 14
    a2 a4 | % 15
    g2 a4 | % 16
    b2 c'4 | % 17 % b2 sic
    c'2 d'4 | % 18
    c'2 bes4 | % 19
    g4 ( a4 ) bes4 | \barNumberCheck #20
    a2 d'4 | % 21
    d'2 c'4 | % 22
    c'2 c'4 | % 23
    c'2 bes4 | % 24
    a2 \bar "|."
}

bass = {
    \clef "bass" \key f \major \time 3/4 \partial 4 a4 | % 1
    a4 ( g4 ) f4 | % 2
    c'2 a4 | % 3
    f4 ( g4 ) a4 | % 4
    f2. | % 5
    a,2. | % 6
    d2. | % 7
    a,2. | % 8
    d2. | % 9
    f4 g4 a4 | \barNumberCheck #10
    f4 g4 a4 | % 11
    bes2 g4 | % 12
    f2 c'4 | % 13
    c'2 bes4 | % 14
    a2 d4 | % 15
    es2 d4 | % 16
    g2 c4 | % 17
    c2 bes,4 | % 18
    a,2 bes,4 | % 19
    c2 c4 | \barNumberCheck #20
    f2 bes,4 | % 21
    bes,2 c4 | % 22
    f2 a,4 | % 23
    c2 c4 | % 24
    <f, c>2 \bar "|."
}

verseOne= \lyricmode {
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup{ \smaller \dynamic f A } lit -- tle child there is __ y -- bore,
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup{ \smaller{\dynamic mp} E } -- ia,
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup{ \smaller \dynamic pp E } -- ia, su -- san -- ni,
  su -- san -- ni, su -- san -- ni,
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup{ \smaller \dynamic mf Y } sprung -- en out of 
  \set associatedVoice = "one"
  Jes -- se’s 
  \set associatedVoice = "women"
  more, 
  Al -- 
  \set associatedVoice = "one"
  le -- lu -- 
  \set associatedVoice = "women"
  ya, Al -- le -- lu -- ya. 
  To save __ us all __ that were fore -- lore.
}

verseOneAlto = \lyricmode {
}

verseOneTenor = \lyricmode {
}

verseOneBass = \lyricmode {
}
