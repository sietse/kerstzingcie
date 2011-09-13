\header {
  title = "Stille  Nacht"
  composer = "Franz Gruber (1787-1863)"
  arranger = "Arr. Jo Ivens"
  tagline =  \markup { \center-column {
    "Versie 2011-09-07"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}
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
  bes'4 bes'8 f'4. | \break

  % Abuse phrasing slur: it doesn't affect lyrics syllables
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
          
  % Abuse phrasing slur: it doesn't affect lyrics syllables
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

  % Abuse phrasing slur: it doesn't affect lyrics syllables
  \phrasingSlurDashed
  g4 bes8 bes8.\( bes16\) bes16( c'16) |
  d'8. bes16 bes8 bes4. |
  bes4 bes8 bes8. bes16 bes8 |
  bes8. bes16 a8 f8.( g16 a16 bes16) |

  a4 c'8 a'8. c'16 ees'8 |
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

  % Abuse phrasing slur: it doesn't affect lyrics syllables
  \phrasingSlurDashed
  ees4 ees8 g8.\( f16\) ees8 |
  bes,8. bes,16 bes,8 bes,8( d8 f8) |
  ees4 ees8 g8. f16 ees8 |
  bes,8. bes,16 bes,8 bes,8( d4) |

  f4 f8 f8. f16 f8 |
  bes,4. ( bes,4. ) |
  bes,8( bes,8 bes,8) f,8 f,8 f,8 |
  bes,2. |
  \bar "|."
}

% Done entering the notes.
% Enter the verses in \lyricmode. `--` to separate syllables (syllable
% line is drawn automatically iff there is space); `__` to request an
% extender line; _ to make a syllable last an extra note. (Normally a
% syllable lasts for one note, or one melismata.)

verseOne = \lyricmode {
  Stil -- le Nacht,
  Hei -- li -- ge Nacht.
  Al -- les schläft,
  ein -- sam 
    % 'wacht' should line up to its note with its left edge, instead of
    % with its middle.
    \once \override LyricText #'self-alignment-X = #-1
    wacht
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
  % Skip 7 notes
  \repeat unfold 7 { \skip 1 }
  Hir -- ten erst 
  Kund ge -- 
    \once \override LyricText #'self-alignment-X = #-1
    macht
  durch der En -- _ gel 
  Hal -- le -- lu -- ja,
  tönt es laut __ _ von 
  fern __ _ und 
    \once \override LyricText #'self-alignment-X = #-1
    nah, __
  Christ der Ret -- ter ist
  da, __
  Christ der Ret -- ter ist
  da.
}

verseThree = \lyricmode {
  % Skip 7 notes
  \repeat unfold 7 { \skip 1 }
  Got -- tes Sohn, __
  o wie 
    \once \override LyricText #'self-alignment-X = #-1
    lacht
  Lieb aus dei -- _ nem
  Gött -- li -- chen mund,
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  End of the music definitions,  %%
%%  start of the layout bits       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Make everything a bit smaller. 
% The normal size of the music font is 20, but that gets things *really*
% jammed together.
#(set-global-staff-size 18)

\score {
  % This bit determines the structure of the layout. A choirstaff
  % containing four staves, in our case, with lyrics in between 1 and 2
  % and between 3 and 4. (Other conceivable option: a choirstaff
  % containing two staves, two voices per stave.
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "vSoprano" { \soprano }
      \new Lyrics \lyricsto "vSoprano" { \verseOne }
      \new Lyrics \lyricsto "vSoprano" { \verseTwo }
      \new Lyrics \lyricsto "vSoprano" { \verseThree }
    >>
    \new Staff { \alto }

    \new Dynamics { \dynamics }

    \new Staff <<
      \new Voice = "vTenor" { \tenor }
      \new Lyrics \lyricsto "vTenor" { \verseOne }
      \new Lyrics \lyricsto "vTenor" { \verseTwo }
      \new Lyrics \lyricsto "vTenor" { \verseThree }
    >>
    \new Staff <<
      \new Voice = "vBass" { \bass }
      \new Lyrics \lyricsto "vBass" { \verseOneBass }
    >>
  >>

  \midi { 
    \context { 
        \Score tempWholesPerMinute = #(ly:make-moment 50 4 ) 
    } 
  }
  \layout { 
    % modify ChoirStaff context to accept Dynamics context. This lets us
    % print the dynamics in the middle.
    \context {
      \ChoirStaff
      \accepts Dynamics
    }
    % We can haz ambitus to display pitch range?
    % Also? No need to preted a staff is bigger than it is. We want to
    % fit everything on one page, after all.
    \context { \Staff 
      \consists "Ambitus_engraver"
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
    }
    % More height-saving tweaks
    \context { \Lyrics 
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
    % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
  }
}
