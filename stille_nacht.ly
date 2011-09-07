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
% #(set-default-paper-size "letter")

soprano = { 
  \time 6/8 
  \key bes \major 
  f'8.( g'16) f'8 d'4. |
  f'8. g'16 f'8 d'4. |
  c''4 c''8 a'4. |
  bes'4 bes'8 f'4. | \break

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

  % Abuse phrasing slur: it doesn't affect lyrics
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

verseOne = \lyricmode {
  Stil -- le Nacht,
  Hei -- li -- ge Nacht.
  Al -- les schläft,
  ein -- sam 
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
    nah,
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
    Stund,
  Christ, in dei -- ner Ge -- 
  burt, __
  Christ __ in dei -- ner Ge --
  burt.
}

verseOneBass = \lyricmode {
  Stil -- le Nacht,
  Hei -- li -- ge Nacht.
  "(Al" -- les "schläft,)"
}

\score {
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
    \context { \Voice
    }
    \context { \Staff 
      \consists "Ambitus_engraver"
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
    }
    \context { \Lyrics 
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
    \context {
      \ChoirStaff
      \accepts Dynamics
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
    % modify PianoStaff context to accept Dynamics context
  }
}

#(set-global-staff-size 18)

\paper {
  %system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
  %between-system-space = #5
  %between-system-padding = #0.3
  ragged-last-bottom = ##t
  ragged-bottom = ##t
}
