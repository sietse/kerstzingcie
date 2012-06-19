% vim: set fileformat=dos:

\version "2.12.3"

mbreak = {}%\break

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
  d4 cis4 b4 
  a4( b4) cis4 
  d4( a4) g4
  fis2
  \bar "|."
}

alto = \relative c' {
  \key d \major
  \time 3/4
  \phrasingSlurDashed

  % The first Nowell the angels did say
  \partial 4 d4 |
  cis2 d4 |
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
  \partial 4 d4 |
  d2 b4 |
}


italic = { % italic
  \override Lyrics.LyricText #'font-shape = #'italic
}

normal = { % text face
  \revert Lyrics.LyricText #'font-shape
}

verseOne = \lyricmode {
  \set stanza = "1. "
  The __ first __ No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well 
    the __ an -- gels did say
  was to cer -- tain poor shep -- herds in fields as they lay;
  in __ fields __ where _ 
    \once \override LyricText #'self-alignment-X = #-1
    they__ 
    lay __ kee -- ping their sheep,
  on a cold win -- ter’s night __ _ that was __ _ so deep.
  \italic No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well, __ No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well! No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well, No -- 
    \once \override LyricText #'self-alignment-X = #-1
    well!
  Born is the King __ of Is -- ra -- el. \normal
}
verseTwo = \lyricmode {
  \set stanza = "2. "
  They | look -- èd __ | up and __ | saw __ _ a | star
  shi -- ning | in __ _ the | east, __ _ be -- | yond __ _ them far;
  and __ | to __ the __ _ | 
    \once \override LyricText #'self-alignment-X = #-1
    earth 
    it __ | gave __ _ great | light,
  and __ _ | so it con -- | ti -- nued both | day __ _ and night.

}
verseThree = \lyricmode {
  \set stanza = "3. "
  And 
  by __ the __
}
verseFour = \lyricmode {
  \set stanza = "4. "
  Then 
  let __ us __
}

