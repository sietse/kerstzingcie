% vim: set fileformat=dos:

\version "2.12.3"

mbreak = { \break } 

soprano = \relative c'' {
  \key bes \major
  \time 3/4
  \partial 4


  \phrasingSlurDashed
  %O | kin -- de -- ke | klein,
  bes4 | bes4. a8 bes4 | c2 
  %o | kin -- de -- ke | teer,
  a4 | bes4 a4 g4 | f2 \breathe
  %uit ho -- gen | he -- mel | daalt gij | neer.
  d'4 | c2 c4 | bes2 c4 f,4\( g4\) a4 | bes2 \breathe

  %Ver -- | laat uw | va -- ders | heer -- lijk huis, 
  d4 | es2 es4 | c2 c4 | d2 d4 | bes2 \breathe
  %wordt | arm en | hulp -- loos, |
  bes4 | c2 c4 | a2 a4 | 

  %draagt een | kruis.
  bes2 bes4 | g2 \breathe
  %O | kin -- de -- ke | klein,
  c4 | f,4 g4 a4 | bes2
  %o | kin -- de -- ke | teer!
  d4 | c4. bes8 a4 | bes2 \fermata 
  \bar "|."
}

alto = \relative c' {
  \key bes \major
  \time 3/4
  \partial 4
}

tenor = \relative c' {
  \key bes \major
  \time 3/4
  \partial 4
}

bass = \relative c {
  \key bes \major
  \time 3/4
  \partial 4
}

verseOne = \lyricmode {
  O kin -- de -- ke | klein,
  o kin -- de -- ke | teer,
  uit ho -- gen | he -- mel | daalt __ _ gij | neer.
  Ver -- | laat uw | va -- ders |
  heer -- lijk huis, wordt | arm en | hulp -- loos, |
  draagt een | kruis.
  O kin -- de -- ke | klein,
  o kin -- de -- ke | teer!
}
