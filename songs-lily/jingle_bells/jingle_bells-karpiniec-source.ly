% vim: set fileformat=dos:

\version "2.12.3"

soprano = \relative c'' {
  \key g \major
  \time 2/4

  \mark \markup { \italic \bold "Spiritoso" }
  % Jingle bells, jingle bells, jingle all the way!
  b8 b8 b4 |
  b8 b8 b4 |
  b8 d8 g,8. a16 |
  b2 |

  % Oh what fun it is to ride in a one-horse open sleigh!
  c8 c8 c8. c16 |
  c8 b8 b8 b16 b16 |
  b8 a8 a8 b8 |
  a4. r8 

  % Jingle bells, jingle bells, jingle all the way!
  b8 b8 b4 |
  b8 b8 b4 |
  b8 d8 g,8. a16 |
  b2 |

  % Oh what fun it is to ride in a one-horse open sleigh!
  c8 c8 c8. c16 |
  c8 b8 b8 b16 b16 |
  d8 d8 c8 a8 |
  g4.^\markup{ \italic Fine }
  r8
  \bar "||"

  % Dashing through the snow
  r4 r8 
  \once \override NoteHead #'font-size = #-4
  \once \override Stem #'font-size = #-4
  \once \override Stem #'length = #5
    d='8
  d8 b'8 a8 g8 |
  d4. 

  % one-horse open sleigh
  \once \override NoteHead #'font-size = #-4
  \once \override Stem #'length = #0.5
  \once \override Stem #'font-size = #-4
    e='8 
  e8 c'8 b8 a8 |
  e2 |

  % Yes we go laughing all the way
  r8 a='8_\< b8 c8 |
  d8\! d8 c8 a8 |
  b2 |
  
  % Bells on bobtail ring
  r4 r8 
  \once \override NoteHead #'font-size = #-4
  \once \override Stem #'length = #0.5
  \once \override Stem #'font-size = #-4
    d,='8 |
  d8 b'8 a8 g8 |
  d2 |

  % We know what 
  r8  c'=''8  b8 a8 |

  % fun it is to ride and sing a 
  % sleighing song tonight
  e8 c'8 b8 a8 |
  d8 d8 d8 d8 |
  e8 d8 c8 a8
  g4 c4^\markup{\halign #2.1 \italic D.C. \italic al \italic fine } |
}

alto = \relative c'' {
  \tieDashed
  \slurDashed

  \key g \major
  \time 2/4

  g8 g8 g4 |
  g8 g8 g4 |
  g8 d8 e8. fis16 |
  g4 r4 |

  g8 g8 g8. g16 |
  g8 g8 g8 g16 g16 |
  g8 g8 g8 g8 |
  fis4. r8 |

  g8 g8 g4 |
  g8 g8 g4 |
  g8 d8 e8. fis16 |
  g4 r4 |

  % Oh what fun it | is to ride in a | one-horse open sleigh |
  g8 g8 g8. g16 |
  g8 g8 g8 g16 g16 |
  g8 g8 fis8 fis8 |
  g4.
  \once \override NoteHead #'font-size = #-4
  \once \override Stem #'length = #0.5
  \once \override Stem #'font-size = #-4
  d='8
  \bar "||"

  % Dashing through the snow in a 
  d8 g8 a8 g8 |
  d4.( d16 ~ d16)
  \pageBreak

  % one-horse open sleigh
  d8 b'8 a8 g8 |
  e4. ~ e8

  % through the fields we go
  e8 c'8 b8 a8
  fis4. ~ fis8

  % laughing all the way
  fis8 fis8 fis8 fis8 |
  g4. ~ g8

  % Bells on bobtail ring
  d8 b'8 a8 g8 |
  d4.( d16 ~ d16)

  % making spirits bright. What
  d8 b'8 a8 g8 |
  e4. ~ e8

  % fun it is to ride and sing a
  c8 e8 g8 fis8 |
  g8 g8 g8 g8 |
  
  % sleighing song to-night. Oh!
  fis8 fis8 fis8 fis8 |
  g4 fis4
}

tenor = \relative c' {
  \key g \major
  \time 2/4
  \slurDashed
  \tieDashed

  % Jingle bells, | jingle bells, |
  % Jingle all the | way
  d8 d8 d4 |
  d8 d8 d4 |
  d8 a8 b8. c16 |
  b4 r4 |

  % Oh what fun it | is to ride in a
  % one-horse open | sleigh
  e8 e8 e8. e16 |
  d8 d8 d8 d16 d16 |
  e8 e8 e8 e8 |
  d4. r8 |

  % Jingle bells, | jingle bells, |
  % Jingle all the | way
  d8 d8 d4 |
  d8 d8 d4 |
  d8 a8 b8. c16 |
  b4 r4 |

  % Oh what fun it | is to ride in a
  % one-horse open | sleigh
  e8 e8 e8. e16 |
  d8 d8 d8 d16 d16 |
  b8 b8 c8 c8 |
  b4.
  \once \override NoteHead #'font-size = #-4
  \once \override Stem #'font-size = #-4
  \once \override Stem #'length = #5
    b8

  % Dashing through the % snow in a
  % one-horse open % sleigh
  b8 d8 d8 c8 |
  b4.( b16 ~ b16) |
  b8 d8 d8 d8 |
  g,4. ~ g8 |


  % through the fields we | go
  % laughing all the | way
  g8 g8 g8 g8 |
  g4. ~ g8 |
  d'8 d8 d8 d8 |
  d4. ~ d8 |

  % Bells on bobtail | ring
  % making spirits | bright; what
  b8 d8 d8 b8 |
  b4.( b16 ~ b16) |
  b8 d8 d8 d8 |
  g,4.( g8) |

  % fun it is to | ride and sing a
  % sleighing song tonight Oh!
  g8 g8 c8 c8 |
  b8 b8 b8 b8 |
  c8 c8 c8 c8 |
  b4 d4 |
}

bass = \relative c' {
  \key g \major
  \time 2/4
  \phrasingSlurDashed
  \tieDashed

  % Jingle bells, % jingle bells, 
  % jingle all the % way (the way)
  g8 fis8 e8( d8) |
  g8 fis8 e8( d8) |
  g8 fis8 e8. d16 |
  g8 fis8 e8( d8) |

  % oh what fun it % is to ride in a 
  % one-horse open % sleigh (I tell you)
  c8 d8 e8. fis16 |
  g8 fis8 e8 d16 d16 |
  cis8 a8 b8 cis8 |
  d8 d8 e8 fis8 |

  % Jingle bells, % jingle bells, 
  % jingle all the % way (the way)
  g8 fis8 e8( d8) |
  g8 fis8 e8( d8) |
  g8 fis8 e8. d16 |
  g8 fis8 e8( d8) |

  % oh what fun it % is to ride in a 
  % one-horse open % sleigh (I tell you)
  c8 d8 e8. fis16 |
  g8 fis8 e8 d16 d16 |
  d8 d8 e8 d8 |
  g4. 
  \once \override NoteHead #'font-size = #-4
  \once \override Stem #'font-size = #-4
  \once \override Stem #'length = #5
    g8

  % Dashing through the % snow in a
  % one-horse open % sleigh
  g8 g8 fis8 g8 |
  g4.\( g16~g16\)
  g8 g,8 a8 b8 |
  c4. ~ c8

  % through the fields we | go
  % laughing all the | way
  c8 c8 e8 e8 |
  d4. ~ d8 |
  d'8 d,8 e8 fis8 |
  g8
    \autoBeamOff
      fis8^._\markup{\halign #1.7 
        \smaller way 
        \smaller Ha! \smaller ha! \smaller ha!
      }
      e8^.
      d8^.
    \autoBeamOn

  % Bells on bobtail | ring
  g8 g8 fis8 g8 |
  << 
    { g2 }
    { 
      s4 s8 
      \override NoteHead #'font-size = #-4
      \override Stem #'font-size = #-4
      \override Stem #'length = #3
      \tieUp
      g,16 ~ g16
      \revert NoteHead #'font-size
      \revert Stem #'font-size
      \revert Stem #'length
    } >>
  % making spirits | bright; what
  g=,8 g8 a8 b8 |
  c4. ~ c8

  % fun it is to | ride and sing a
  % sleighing song tonight Oh!
  c8 d8 e8 fis8 |
  g8 fis8 e8 d8 |
  d8 d8 e8 fis8 |
  g4 d4

}

    dropLyrics =
    {
        \override LyricText #'extra-offset = #'(0 . -1.8)
        \override LyricHyphen #'extra-offset = #'(0 . -1.8)
        \override LyricExtender #'extra-offset = #'(0 . -1.8)
    }

    raiseLyrics =
    {
        \revert LyricText #'extra-offset
        \revert LyricHyphen #'extra-offset
        \revert LyricExtender #'extra-offset
    }

refrainJingle = \lyricmode {
  \markup{ \smaller \dynamic f  Jin } 
    -- gle bells, |
  jin -- gle bells, |
  jin -- gle all the |
  way!
  Oh what fun it | % 6
  is to ride in a | % 7
  one -- horse o -- pen |
  sleigh!
  Jin -- gle bells, |
  jin -- gle bells, |
  jin -- gle all the |
  way!
}

refrainFunSop = \lyricmode {
  Oh what fun it | % 6
  \dropLyrics
    is to ride in a | % 7
    one -- horse o -- pen |
    sleigh!
  \raiseLyrics
}
refrainFunRest = \lyricmode {
  Oh what fun it | % 6
  \dropLyrics
    is to ride in a | % 7
    one -- horse o -- pen |
    \once \override LyricText #'self-alignment-X = #-0.4
    \markup { sleigh! \hspace #1.8 \dynamic mf }
  \raiseLyrics
}

refrainSkip = \repeat unfold 50 { s8 }

refrainBass = {
  \repeat unfold 8 { s8 }
  \lyricmode {
    all the way, the way!
  }
  \repeat unfold 13 { s8 }
  \lyricmode {
    sleigh! I tell you 
  }
  \repeat unfold 8 { s8 }
  \lyricmode {
    all the way, the way!
  }
}

verseOneRest = {
  \set ignoreMelismata = ##t
  \refrainSkip
  \lyricmode {
    \skip 8 
    Da -- shing through the snow __
    in a one -- horse o -- pen sleigh, __ _
    o’er the fields we go, __ _
    lau -- ghing all the way __ _
    Bells on bob -- tail ring, __ _ _
    ma -- king spi -- rits 
    bright; what 
    fun it is to 
    ride and sing a 
    sleigh -- ing song to --
    night! Oh!
  }
}

verseTwoRest = \lyricmode {
  \set ignoreMelismata = ##t
  \refrainJingle
  \refrainFunRest
  \lyricmode {
    A
    day or two a -- |
    go I __ _ |
    thought I’d take a 
    ride, and |
    soon miss Fan -- nie |
    Bright was |
    \once \override LyricText #'self-alignment-X = #'0.8
    \markup { \smaller \dynamic f \hspace #1 nes }
      -- ted by my |
    side. 
      \once \override LyricText #'self-alignment-X = #'0.6
      \markup { \smaller \dynamic mf \hspace #0.5 The }
    horse was lean and |
    lank, mis -- _ |
    for -- tune seemed his |
    lot: he |
    got in -- to a |
    drif -- ted bank and |
    \once \override LyricText #'self-alignment-X = #'-0.6
    \markup { we \hspace #'0.4 —} we got up -- |
    sot! Oh!
  }
}

verseThreeRest = {
  \set ignoreMelismata = ##t
  \refrainSkip
  \lyricmode {
    A day or two a -- 
    go, __ the __ _ 
    sto -- ry I must 
    tell, I 
    went out in the 
    snow __ and 
    on my back I 
    fell; A 
    gent was ri -- ding 
    by 
    \once \override LyricText #'self-alignment-X = #-1
      in 
    \once \override LyricText #'self-alignment-X = #1
      a 
    one -- horse o -- pen 
    sleigh, he |
    laughed as I there 
    spraw -- ling lay but 
    quick -- ly drove a -- 
    way! Oh!
  }
}
verseFourRest = {
  \set ignoreMelismata = ##t
  \refrainSkip
  \lyricmode {
    \skip 8 Now the ground is white __ _ _
    go it while you’re young, __ _
    take the girls to -- night __
    and sing this sleigh -- ing song; __ 
    Just get a bob -- tailed bay, __
    two -- _ for -- ty as his speed, __ _
    hitch him to an o -- pen sleigh
    and crack! you’ll take the lead! Oh!
  }
}

verseOneSop = {
  \refrainSkip
  \lyricmode {
    \skip 8 Da -- shing through the snow
    \skip 8 One -- horse o -- pen sleigh,
    Yes, we go
    lau  -- ghing  all the way.
    \skip 8 
    Bells on bob -- tail ring,
    We know what 
    fun it is to 
    ride and sing a 
    sleigh -- ing song to --
    night! Oh!
  }
}

verseTwoSop = {
  \refrainJingle
  \refrainFunSop
  \lyricmode {
    A day or two a -- go
    I thought I’d take a ride
    Oh she was
    \once \override LyricText #'self-alignment-X = #'0.8
    \markup { \smaller \dynamic f \hspace #1 sea }
      -- ted by my side.
    \once \override LyricText #'self-alignment-X = #'0.6
    \markup { \smaller \dynamic mf \hspace #1 The }
      horse was lean and lank,
    That horse he
    ran in -- to a drif -- ted bank and
    \once \override LyricText #'self-alignment-X = #'-0.6
    \markup { we \hspace #'0.4 —} we got up -- |
    sot! Oh!
  }
}

verseThreeSop = {
  \refrainSkip
  \lyricmode {
    A day or two a -- 
    go, __ the
    sto -- ry I must tell
    And I fell on my back I fell; A 
    gent was ri -- ding 
    by

    That man he
    laughed as I there 
    spraw -- ling lay but 
    quick -- ly drove a -- 
    way! Oh!
  }
}

verseFourSop = {
  \refrainSkip
  \lyricmode {
    \skip 8 Now the ground is white
    \skip 8 go it while you’re young, __
    And you can
    sing this sleigh -- ing song; __ 
    Just get a bob -- tailed bay, __
    And then you
    hitch him to an o -- pen sleigh
    and crack! you’ll take the lead! Oh!
  }
}
