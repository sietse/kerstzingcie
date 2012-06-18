% vim: set fileformat=dos:

\version "2.12.3"

mbreak = \break

soprano = \relative c' {
  \phrasingSlurDashed
  \key d \major
  \time 3/4

  % The __ first __ No -- "well__" the __ an -- gels did say
  \partial 4 fis8( e8) |
  d4.( e8) fis8( g8) |
  a2 b8( cis8) |
  d4\( cis4\) b4 |
  a2 
  
  % was to cer -- tain poor shep -- herds in fields as they lay;
      b8\( cis8\) |
  \mbreak
  d4\( cis4\) b4 |
  a4\( b4\) cis4 |
  d4\( a4\) g4 |
  fis2 

  % In fields where _ "they__" lay __, kee -- ping their sheep,
      fis8( e8) |
  d4.( e8) fis8\( g8\) |
  \mbreak
  a2 b8( cis8) |
  d4\( cis4\) b4 |
  a2 
  
  % On a cold win -- ter’s night __ that was __ so deep.
      b8\( cis8\) |
  d4\( cis4\) b4 |
  a4\( b4\) cis4 |
  \mbreak
  d4\( a4\) g4 |
  fis2

  % No -- well, No -- well! No -- well, No -- well!
      fis8( e8) |
  d4.( e8) fis8( g8) |
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
  \partial 4 d4 |
  cis2 d4 |
}

tenor = \relative c' {
  \key d \major
  \time 3/4
  \partial 4 a8( g8) |
  fis2 d'4
}

bass = \relative c {
  \key d \major
  \time 3/4
  \partial 4 d4 |
  d2 b4 |
}

verseOne = \lyricmode {
  \set stanza = "1. "
  The __ first __ No -- "well__" the __ an -- gels did say
  was to cer -- tain poor shep -- herds in fields as they lay;
  in fields where _ "they__" lay __ kee -- ping their sheep,
  On a cold win -- ter’s night __ _ that was __ _ so deep.
  No -- well, No -- well! No -- well, No -- well!
  Born is the King of Is -- ra -- el.
}
verseTwo = \lyricmode {
  \set stanza = "2. "
  They 
  look -- ed __
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

