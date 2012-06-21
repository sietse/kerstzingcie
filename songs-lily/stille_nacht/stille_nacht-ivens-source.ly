\version "2.12.3"

% Enter the notes for each voice. Normally I'd do that in \relative
% mode, but in this case I was adapting someone else's version of Stille
% Nacht.
%
% (Relative mode is basically this: instead of specifying the absolute
% octave for each note, assume that each new note is the one at most a
% fourth removed from the preceding one. If you're jumping a quint or
% more, use ' or , to adjust the note's octave upwards/downwards.)

soprano = { 
  \time 6/8 
  \key bes \major 

  f'8.( g'16) f'8 d'4. | 
  f'8. g'16 f'8 d'4. |   
  c''4 c''8 a'4. |       
  % Structurally neatest to have a system linebreak after 'einsam
  % wacht', although it makes the note spacing of the last line a bit
  % stretched.
  bes'4 bes'8 f'4. |     \break

  % Abuse phrasing slur: it doesn't affect lyrics
  \phrasingSlurDashed
  g'4 g'8 bes'8.\( a'16\) g'8 |
  f'8. g'16 f'8 d'4. |
  g'4 g'8 bes'8. a'16 g'8 |
  f'8. g'16 f'8 d'4. |

  c''4 c''8 ees''8. c''16 a'8 |
  bes'4.( d''4.) |
  bes'8.( f'16) d'8 f'8. ees'16 c'8 |
  bes2. |
  \bar "|."
}

alto = {
  \key bes \major
  d'8.( ees'16) d'8 bes4. |
  d'8. ees'16 d'8 bes4. |
  f'4 g'8 g'8( f'8 ees'8) |
  d'4 ees'8 d'8( c'8 bes8) |
          
  % Abuse phrasing slur: it doesn't affect lyrics
  \phrasingSlurDashed
  ees'4 d'8 d'8.\( d'16\) d'8 |
  d'8. ees'16 d'8 bes4. |
  ees'4 ees'8 ees'8.( ees'16) ees'8 |
  d'8. ees'16 d'8 bes4. |

  f'4 g'8 g'8. a'16 f'8 |
  f'4.( f'4.) |
  f'8( ees'8) d'8 c'8 bes8 a8 |
  bes2. |
  \bar "|."
}

% Normally, enter the dynamics (\p, \pp, \<\! etc) inside a voice
% (either all of them, or just the soprano); in this case, though, I've
% entered them separately to be able to put them on their own line
% between the staves
dynamics = {
  s8.\p s16 s2 
  s8.\pp s16 s2 
  s4\p s2 
  s4\pp s2

  s2. 
  s8. s16\> s8\! s4.
  s4 s8 s8.\< s16 s8\!
  s8 s8\> s8\! s4.

  s2. 
  s4.\< s4.\! 
  s8.\> s16 s8 s8 s8 s8\!
  s2.
}

tenor = {
  \key bes \major 
  \clef "treble_8"
  bes4 bes8 bes4. |
  bes8. bes16 bes8 bes4. |
  a4 c'8 ees'8( d'8 c'8) |
  bes4 bes8 bes8( a8 as8) |

  % Abuse phrasing slur: it doesn't affect lyrics
  \phrasingSlurDashed
  g4 bes8 bes8.\( bes16\) bes16( c'16) |
  d'8. bes16 bes8 bes4. |
  bes4 bes8 bes8. bes16 bes8 |
  bes8. bes16 a8 f8.( g16 a16 bes16) |

  a4 c'8 a8. c'16 ees'8 |
  d'4.( bes4.) |
  d'8( c'8) bes8 a8 g8 f8 |
  f2. |
  \bar "|."
}

bass = {
  \key bes \major 
  \clef bass
  r4 r8 f8.( ees16) f8 |
  d4( bes,8) bes,8. d16 bes,8 |
  f8 f8 f8 f4. |
  bes,4 c8 bes,8( c8 d8) |

  % Abuse phrasing slur: it doesn't affect lyrics
  \phrasingSlurDashed
  ees4 ees8 g8.\( f16\) ees8 |
  bes,8. bes,16 bes,8 bes,8( d8 f8) |
  ees4 ees8 g8. f16 ees8 |
  bes,8. bes,16 bes,8 bes,8( d4) |

  f4 f8 f8. f16 f8 |
  bes,4. ( bes,4. ) |
  bes,8( bes,8) bes,8 f,8 f,8 f,8 |
  bes,2. |
  \bar "|."
}

% Done entering the notes.
% Enter the verses in \lyricmode. `--` to separate syllables (syllable
% line is drawn automatically iff there is space); `__` to request an
% extender line; _ to make a syllable last an extra note. (Normally a
% syllable lasts for one note, or one melismata.)

verseOne = \lyricmode {
  % Skip 7 notes
  \repeat unfold 7 { \skip 1 }
  Al -- les schläft, __
  ein -- sam 
    % 'wacht' should line up to its note with its left edge, instead of
    % with its middle.
    \once \override LyricText #'self-alignment-X = #-1
    wacht __
  nur das trau -- te hoch --
  hei -- li -- ge Paar,
  hol -- der Kna -- be im 
  lok -- ki -- gen 
    \once \override LyricText #'self-alignment-X = #-1
    Haar, __
  schlaf in himm -- li -- scher 
  Ruh, __
  schlaf __ in himm -- li -- scher
  Ruh.
}

verseTwo = \lyricmode {
  Stil -- le Nacht,
  Hei -- li -- ge Nacht.
  Hir -- ten erst __
  Kund ge -- 
    \once \override LyricText #'self-alignment-X = #-1
    macht __
  durch der En -- _ gel 
  Hal -- le -- lu -- ja,
  tönt es laut __ _ von 
  fern __ _ und 
    \once \override LyricText #'self-alignment-X = #-1
    nah, __
  Christ der Ret -- ter ist
  da, __
  Christ __ der Ret -- ter ist
  da.
}

verseThree = \lyricmode {
  % Skip 7 notes
  \repeat unfold 7 { \skip 1 }
  Got -- tes Sohn, __
  o wie 
    \once \override LyricText #'self-alignment-X = #-1
    lacht __
  Lieb aus dei -- _ nem
  Gött -- li -- chen Mund,
  da uns schlägt __ _ die 
  ret -- ten -- de 
    \once \override LyricText #'self-alignment-X = #-1
    Stund, __
  Christ, in dei -- ner Ge -- 
  burt, __
  Christ __ in dei -- ner Ge --
  burt.
}

% The basses briefly do their own thing at the start. Let's give them
% their own line of lyrics.
verseOneBass = \lyricmode {
  Stil -- le Nacht,
  Hei -- li -- ge Nacht.
  "(Al" -- les "schläft,)"
}
