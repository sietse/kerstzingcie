% vim: set fileformat=dos:

\version "2.12.3"

%mbreak = \break
mbreak = {}

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

  %Here in the o -- pen we’re                 %                  [1]    [2]       
  %wal -- kin’ and ho -- pin’.                % sop: dd1 dd2 dd3 dd4 :| dd4 |: dd1
  %Ding -- a -- ding, (4x)                    % ten: r   r   r   r      rin    the
  \mbreak
  g='8 g8 g8 c8 ~ c8 c4 c8 |
  f,8 f8 f8 bes8 ~ bes8 bes4. |
  \break
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
  \bar "||"

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

tenor = \relative c {
  \time 4/4
  \key es \major
  R1 R1 R1


  % Two hearts are thril -- ling in
  % spite of the chill in the wea -- ther,
  % ooh ooh
  R1 |
  g'8 g8 g8 c8 ~ c8 c4 c8 |
  es8 d8 c8 bes8 ~ bes8 bes4 bes8 |
  bes4 g2. | 
  a2 a2

  % Love knows no sea -- son, 
  % love knows no clime,
  % ro -- mance can blos -- som
  % a -- ny old time.
  es8 es8 es8 f8 ~ f8 f4. |
  g8 g8 g8 as8 ~ as2 |
  g8 g8 g8 g8 ~ g8 g4. |
  bes8 bes8 bes8 a8 ~ a2 |

  % Here in the o -- pen we’re
  % wal -- kin’ and ho -- pin’.
  bes8 bes8 bes8 bes8 ~ bes8 as4 g8 |
  as8 as8 as8 as8 ~ as8 as4.
  \set Score.repeatCommands = #'(                     start-repeat)
    R1 R1 R1
  \set Score.repeatCommands = #'((volta "1"))
    R1
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  % Sleigh -- bells
    r2 r4 bes=8 bes8
  \set Score.repeatCommands = #'(           (volta #f)  start-repeat)

  % ring, are you 
  % liste -- ning in the 
  % lane snow is 
  % gliste -- ning; A
  bes2. bes8 bes8 |
  g4 bes2 bes8 bes8 |
  bes2. bes8 bes8 |
  as4 bes2 r8 bes8 |

  % beau -- ti -- ful sight, we’re
  % hap -- py to -- night,
  % wal -- king in a win -- ter won -- der -- 
  % land. Gone a --
  d8 d8 d8 c8 ~ c4 r8 c8 |
  bes8 bes8 bes8 as8 ~ as2 |
  as8 as8 as8 as8   as8 as8 as8 as8 |
  \set Score.repeatCommands = #'((volta "1"))
    g2. bes8 bes8 |
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
    g2. r4 |
  \set Score.repeatCommands = #'(           (volta #f))
  % land. % repeat

  % Doo doo doo doo
  % doo doo doo doo
  % doo doo doo doo
  g4 g4 a4 a4 |
  b4 b4 a4 g4 |
  g4 g4 a4 a4 |
    
  % doo doo doo doo
  % He’ll say: Are you mar -- ried? We'll say
  % No, man! But 
  % you can do the job when you’re in 
  b4 b4 a4 g4 |
  f8 f8 d'8 d8  g,8 g8 es'8 es8 |
  d4 bes2 r8 c8 |
  d8 d8 g,8 g8   c8 c8 f,8 f8 |

  % town.
  % La -- ter on
  % we’ll con -- spi -- re,
  % as we dream
  % by the fi -- re, to
  bes2. r4 |
  r4 bes8 bes8 bes2 ~ |
  bes4 bes8 bes8 g4 bes4 ~ |
  bes4 bes8 bes8 bes2 ~ |
  bes4 bes8 bes8 as4 bes8 bes8 |

  % face un -- a -- fraid
  % the plans that we’ve made,
  % wal -- king in a win -- ter won -- der --
  % land.
  d8 d8 d8 c8 ~ c4. c8 |
  bes8 bes8 bes8 as8 ~ as2 |
  as8 as8 as8 as8  as8 as8 as8 as8
  g1

  % Love knows no sea -- son,
  % love knows no clime,
  % ro -- mance can blos -- som
  % a -- ny old time.
  es8 es8 es8 f8 ~ f8 f4. |
  g8 g8 g8 as8 ~ as2 |
  g8 g8 g8 g8 ~ g8  g4. |
  bes8 bes8 bes8 a8 ~ a2 |

  % Here in the o -- pen we’re
  % wal -- kin’ and ho -- pin’. 
  % To --
  % ge -- ther __ 
  bes8 bes8 bes8 bes8 ~ bes8 as4 g8 |
  as8 as8 as8 as8 ~ as8 as4. |
  r2 r4 r8 bes8 |
  bes4 bes2. |
}

bass = \relative c {
}

verseOneSoprano = \lyricmode {
  O -- ver the ground lies a
  man -- tle of white, a
  hea -- ven of dia -- monds shines

  down through the night.
  Ooh, ooh.

  Here in the o -- pen we’re
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
  wal -- kin’ and ho -- pin’, to --
  ge -- ther. __
}

verseOneAlto = \lyricmode {
  O -- ver the ground lies a
  man -- tle of white, a
  hea -- ven of dia -- monds shines

  down through the night.
  Ooh, ooh.

  ro -- mance can blos -- som
  a -- ny old time.

  Here in the o -- pen we’re
  wal -- kin’ and ho -- pin’.
  Ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,

  ding -- a -- ding, % repeat

  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,
  ding -- a -- ding,

  ding -- a -- ding,
  ding -- a -- ding,

  wal -- king in a win -- ter won -- der --
  land.

  land. % repeat

  Doo doo doo doo
  doo doo doo doo
  doo doo doo doo
  doo doo doo doo
  doo doo doo doo
  doo doo doo doo
  doo doo

  "doo (doo)" 
  Ooh ooh
  ooh ooh
  ooh ooh
  ooh ooh

  ooh ooh
  ooh ooh
  wal -- king in a win -- ter won -- der --
  land.

  ro -- mance can blos -- som
  a -- ny old time.

  Here in the o -- pen we’re
  wal -- kin’ and ho -- pin’, to --
  ge -- ther. __
}

verseOneTenor = \lyricmode {
  Two hearts are thril -- ling in
  spite of the chill in the wea -- ther,

  ooh ooh

  Love knows no sea -- son, 
  love knows no clime,
  ro -- mance can blos -- som
  a -- ny old time.

  Here in the o -- pen we’re
  wal -- kin’ and ho -- pin’.
  Sleigh -- bells

  ring, are you 
  liste -- ning in the 
  lane snow is 
  gliste -- ning; A

  beau -- ti -- ful sight, we’re
  hap -- py to -- night,
  wal -- king in a win -- ter won -- der -- 
  land. Gone a --

  land. % repeat

  Doo doo doo doo
  doo doo doo doo
  doo doo doo doo

  doo doo doo doo
  He’ll say: Are you mar -- ried? We’ll say
  No, man! But 
  you can do the job when you’re in 

  town.
  La -- ter on
  we’ll con -- spi -- re,
  as we dream
  by the fi -- re, to

  face un -- a -- fraid
  the plans that we’ve made,
  wal -- king in a win -- ter won -- der --
  land.

  Love knows no sea -- son,
  love knows no clime,
  ro -- mance can blos -- som
  a -- ny old time.

  Here in the o -- pen we’re
  wal -- kin’ and ho -- pin’, to --
  ge -- ther. __ 
}

verseTwoTenor = {
  \repeat unfold 47 { \skip4 }
  \lyricmode {
    way is the 
    blue -- bird, here to 
    stay is a 
    new bird; he
    sings a love song, as
    we go a -- long
  }
}

verseOneBass = \lyricmode {
}
