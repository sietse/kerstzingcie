% vim: set fileformat=dos:

\version "2.12.3"

miditempo = #(ly:make-moment 120 4)

mbreak = \break

soprano = \relative c' {
  \phrasingSlurDashed
  \key d \major
  \time 3/4

  % The first Nowell the angels did say
  \partial 4 fis8( e8) |
  d4.( e8) fis8([ g8)] |
  a2 b8( cis8) |
  d4\( cis4\) b4 |
  a2 
  
  % was to certain poor shepherds in fields as they lay;
      b8\( cis8\) |
  \mbreak
  d4\( cis4\) b4 |
  a4\( b4\) cis4 |
  d4\( a4\) g4 |
  fis2 

  % In fields where they lay keeping their sheep,
      fis8( e8) |
  d4.( e8) fis8\([ g8\)] |
  \mbreak
  a2 b8( cis8) |
  d4\( cis4\) b4 |
  a2 
  
  % on a cold winter’s night that was so deep.
      b8\( cis8\) |
  d4\( cis4\) b4 |
  a4\( b4\) cis4 |
  \mbreak
  d4\( a4\) g4 |
  fis2

  % Nowell, Nowell! Nowell, Nowell!
      fis8( e8) |
  d4.( e8) fis8([ g8)] |
  a2 d8( cis8) |
  b2 b4 |
  \mbreak
  a2. |

  % Born is the King of Israel.
  d4 cis4 b4 |
  a4( b4) cis4 |
  d4( a4) g4 |
  fis2       
  \bar "|."
}

alto = \relative c' {
  \key d \major
  \time 3/4
  \phrasingSlurDashed

  % The first Nowell the angels did say
  \partial 4 d4 |
  a2 d4 |
  e2 e4 |
  a4\( a4\) g4 |
  fis2

  % was to certain poor shepherds in fields as they lay;
    d8\( e8\) |
  \mbreak
  a4\( fis4\) g4 |
  a4 \( d,4\) g4 |
  fis4\( fis4\) e4 |
  d2 
  
  % in fields where they lay keeping their sheep,
    cis4 |
  a2 d8\( d8\) |
  \mbreak
  e2 e4 |
  a4\( a4\) g4 |
  fis2 
  
  % on a cold winter’s night that was so deep.
    d8\( e8\) |
  a4\( fis4\) g4 |
  a4\( g4\) g4 |
  \mbreak
  fis4\( fis4\) e4 |
  d2

  % Nowell, Nowell! Nowell, Nowell!
    cis4 |
  a2 d4 |
  cis2 fis4 |
  g2 g4 |
  fis2( a4) |

  % Born is the King of Israel.
    fis4 fis4 g4 |
  fis2 g4
  fis2 e4 |
  d2
}

tenor = \relative c' {
  \key d \major
  \time 3/4
  \phrasingSlurDashed

  % The first Nowell the angels did say
  \partial 4 a8( g8) |
  fis2 d'4 |
  cis2 b4 |
  a4\( a4\) b8( cis8) |
  d2 

  % was to certain poor shepherds in fields as they lay;
    b8\( a8\) |
  a4\( a4\) cis4 |
  d4\( b4\) g4 |
  a4\( d4\) a4 |
  a2 

  % in fields where they lay keeping their sheep,
    a8( g8) |
  fis2 d'8\( d8\) |
  d4( cis4) b4 |
  a4\( a4\) b8( cis8) |
  d2

  % on a cold winter’s night that was so deep.
    b8\( a8\) |
  a4\( a4\) cis4 |
  d4\( d4\) e4 |
  a,4\( d4\) a4 |
  a2

  % Nowell, Nowell! Nowell, Nowell!
    a8( g8) |
  fis2 b4 |
  a2 a4 |
  b4.( cis8) d8([ e8)] |
  fis2( e4) |

  % Born is the King of Israel.
  d4 d4 d4 |
  d2 g,4 |
  a2 a4 |
  a2 \bar "|."
}

bass = \relative c {
  \key d \major
  \time 3/4
  \phrasingSlurDashed

  % The first Nowell the angels did say was to
  \partial 4 d4 |
  d2 b4 |
  a4( a') g |
  fis4\( fis\) g |
  d2 g8\( g8\)

  % certain poor shepherds in fields as they lay; in
  fis4\( d4\) e4 |
  fis4\( g4\) e4 |
  fis8\( g8 a4\) a4 |
  d,2 a4 |

  % fields where they lay keeping their sheep, on a 
  d2 b8\( b8\) |
  a4( a'4) g4 |
  fis4\( fis4\) g4 |
  d2 g8\( g8\) |

  % cold winter’s night that was so deep.
  fis4\( d4\) e4 | 
  fis4\( g4\) e4 |
  fis8\( g8 a4\) a,4 |
  d2 

  % Nowell, Nowell! Nowell, Nowell!
    a4 |
  d2 b4 |
  fis'2 d4 |
  g4.( a8) \noBeam b8( cis8) |
  d2( cis4) |

  % Born is the King of Israel.
  b4 a4 g4 |
  d'4( d,4) e4 |
  fis8( g8 a4) a,4 |
  d2
}


italic = { % italic
  \override Lyrics.LyricText #'font-shape = #'italic
}

normal = { % text face
  \revert Lyrics.LyricText #'font-shape
}

dropLyrics = {
    \override LyricText #'extra-offset = #'(0 . -1)
    \override LyricHyphen #'extra-offset = #'(0 . -1)
    \override LyricExtender #'extra-offset = #'(0 . -1)
}

raiseLyrics = {
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

verseOne = \lyricmode {
  \set stanza = "1. "
  The __ first __ No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well 
    the __ an -- gels did say
  was to cer -- tain poor shep -- herds in fields as they lay;
  in __ fields __ 
    \once \override LyricText #'X-extent = #'(0 . 1)
    where _ 
    \once \override LyricText #'self-alignment-X = #-1
    they__ 
    lay __ kee -- ping their sheep,
  on a cold win -- ter’s night __ _ that was __ _ so deep.
}
verseTwo = \lyricmode {
  \set stanza = "2. "
  They | look -- èd __ | up and __ | saw __ _ a | star
  \once \override LyricText #'X-extent = #'(0 . 1)
  shining _ | in __ _ the | east, __ _ be -- | yond __ _ them far;
  and __ | to __ the __ _ | 
    \once \override LyricText #'self-alignment-X = #-1
    earth 
    it __ | gave __ _ great | light,
  and __ _ | so it con -- | ti -- nued both | day __ _ and night.
  \dropLyrics
  \italic No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well, __ No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well! No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well, 
    \set associatedVoice = "vAlto" % refers to well!
    No -- 
    \set associatedVoice = "vSoprano" % refers to Born
  \raiseLyrics
    well! __
  Born is the King __ of Is -- ra -- el. \normal
}

verseThree = \lyricmode {
  \set stanza = "3. "
  And 
  by __ the __ | % 1
  light __ of __ | % 2
  that __ _ same  | % 3
  star three _ | % 4

  wise __ _ men | % 5
  came __ _ from | % 6
  coun -- _ try | % 7
  far; to __ | % 8

  seek __ for a | % 9
  \once \override LyricText #'self-alignment-X = #-1
  King __ 
    was __ | % 10
  their __ _ in -- | % 11
  tent, and to | % 12
  fol -- low the | % 13
  star __ _ wher -- | % 14
  \once \override LyricText #'self-alignment-X = #1
  "- e" -- ver it |
  went.
}
verseFour = \lyricmode {
  \set stanza = "4. "
  Then |
  let __ us __ | %1
  all __ with __ |
  one __ _ ac -- |
  cord sing __ _ |

  prai -- _ ses |
  to __ _ our |
  hea -- ven -- ly |
  Lord that |
  hath __ 
    \once \override LyricText #'X-extent = #'(0 . 1)
    made __ _ |
  \once \override LyricText #'self-alignment-X = #-1
  heav’n __ 
    and __ |
  earth __ _ of __ |
  nought and __ _ |
  with __ _ his |
  blood __ _ man -- |
  %\once \override LyricText #'self-alignment-X = #1
    "- kind" __ _ 
  hath |
  bought.
}

