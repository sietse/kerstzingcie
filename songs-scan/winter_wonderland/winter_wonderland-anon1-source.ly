% vim: set fileformat=dos:

\version "2.12.3"

mbreak = \break
%mbreak = {}

soprano = \relative c' {
  \time 4/4
  \key es \major

  %O -- ver the ground lies a
  %man -- tle of white, a
  %hea -- ven of dia -- monds shines
  %down through the night.

  es8 es es f ~ f f4 f8 |
  g8 g g as ~ as4.
  <<
    { \voiceOne
      as8 |
      bes8 bes bes c8 ~ c c4 c8 |
      \mbreak
      bes8 bes bes as8 ~ as2 |
    }
    \new Voice
    { \voiceTwo
      as8 |
      g8 g g g8 ~ g g4 g8 |
      g8 g g f8 ~ f2 |
    }
  >> \oneVoice

  R1 R1 R1

  %Ooh, ooh.
  g2 f2

  \mbreak
  R1 R1 R1 R1

  %Here in the o -- pen we're                 %                  [1]    [2]       
  %wal -- kin’ and ho -- pin’.                % sop: dd1 dd2 dd3 dd4 :| dd4 |: dd1
  %Ding -- a -- ding, (4x)                    % ten: r   r   r   r      rin    the
  \mbreak
  g='8 g8 g8 c8 ~ c8 c4 c8 |
  f,8 f8 f8 bes8 ~ bes8 bes4.
  \set Score.repeatCommands = #'(                     start-repeat)
    r8 g4 g8 g4 r4 |
    r8 g4 g8 g4 r4 |
    r8 as4 as8 as4 r4 |
  \set Score.repeatCommands = #'((volta "1"))
    r8 as4 as8 as4 r4 |
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
    r8 as4 as8 as4 r4 |
  \set Score.repeatCommands = #'(           (volta #f)  start-repeat)
  \mbreak

  % ding -- a -- ding ...
  % wal -- king in a win -- ter won -- der --
     r8 g4 g8 g4 r4 |
     r8 g4 g8 g4 r4 |
     r8 as4 as8 as4 r4 |
     r8 as4 as8 as4 r4 |
     r8 as4 as8 as4 r4 |
     r8 as4 as8 as4 r4 |
     g8 g g g f8 f f f |
  \set Score.repeatCommands = #'((volta "1"))
    { es2. r4 }
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
    { es2. r4 }
  \set Score.repeatCommands = #'(           (volta #f))

  % land.
  % In the mea -- dow we can build a
  % snow -- man,
  % then pre -- tend that he is Par -- son

  d8 d8 b'8 b8 e,8 e8 c'8 c8 |
  b4 g2. |
  d8 d8 b'8 b8 e,8 e8 c'8 c8 |

  %Brown.
  %doo doo doo doo ...
  \mbreak
  b='1 |
  bes4 bes4 c4 c4 |
  d4 d4 bes4 bes4 |
  bes2 a2 |

  %doo. La -- ter
  %on we’ll con --
  %spi -- re as we
  %dream by the
  %fi -- re,
  \mbreak
  as2. bes8 bes8 |
  bes 2. bes8 bes8 |
  g4 bes2 bes8 bes8 |
  bes 2. bes8 bes8 |
  g4 bes2. |

  %Ooh ooh
  %ooh ooh
  %wal -- king in a win -- ter won -- der --
  %land.
  \mbreak
  bes2 as2 |
  g2 f2 |
  g8 g8 g8 g8 f8 f8 f8 f8 |
  es1 |

  \mbreak
  R1 R1 R1 R1

  %Here in the o -- pen we’re
  %wal -- kin’ and hopin’. To --
  %ge -- ther __
  \mbreak
  g8 g8 g8 c8 ~ c8 c4 c8 |
  f,8 f8 f8 bes8 ~ bes8 bes4 bes8 |
  bes4 g2. ~ |
  g1 \bar "|."

}

alto = \relative c' {
}

tenor = \relative c' {
}

bass = \relative c {
}

verseOneSoprano = \lyricmode {
  O -- ver the ground lies a
  man -- tle of white, a
  hea -- ven of dia -- monds shines

  down through the night.
  Ooh, ooh.

  Here in the o -- pen we're
  wal -- kin’ and ho -- pin’.
  Ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding, % for the repeat

  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,

  ding -- a -- ding,
  ding -- a -- ding,

  wal -- king in a win -- ter won -- der --
  land.
  land. % for the repeat

  In the mea -- dow we can build a
  snow -- man,
  then pre -- tend that he is Par -- son

  Brown.
  Doo doo doo doo
  doo doo doo doo
  doo doo

  doo. La -- ter
  on we’ll con --
  spi -- re as we
  dream by the
  fi -- re,

  Ooh ooh
  ooh ooh
  wal -- king in a win -- ter won -- der --
  land.

  Here in the o -- pen we’re
  wal -- kin’ and ho -- pin’. To --
  ge -- ther __
}

verseOneAlto = \lyricmode {
  O -- ver the ground lies a
  man -- tle of white, a
  hea -- ven of dia -- monds shines

  down through the night.
  Ooh, ooh.

  Ro -- mance can blos -- som
  a -- ny old time.

  Here in the o -- pen we're
  wal -- kin’ and ho -- pin’.
  Ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,

  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,

  ding -- a -- ding,
  ding -- a -- ding,

  wal -- king in a win -- ter won -- der --
  land.

  In the mea -- dow we can build a
  snow -- man,
  then pre -- tend that he is Par -- son

  Brown.
  Doo doo doo doo
  doo doo doo doo
  doo doo

  doo. La -- ter
  on we’ll con --
  spi -- re as we
  dream by the
  fi -- re,

  Ooh ooh
  ooh ooh
  wal -- king in a win -- ter won -- der --
  land.

  Here in the o -- pen we’re
  wal -- kin’ and ho -- pin’. To --
  ge -- ther __
}

verseOneTenor = \lyricmode {
}

verseOneBass = \lyricmode {
}
