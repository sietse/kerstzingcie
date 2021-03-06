\version "2.12.3"
\include "stille_nacht-ivens-source.ly"

nummer = "18. "

\header {
  title = \markup { \nummer "Stille Nacht" }
  composer = "Franz Gruber (1787-1863)"
  arranger = "Arranged by Jo Ivens"
  tagline =  \markup { \center-column {
    "Versie 2012-11-29"
    "Collegium Musicum Kerstzingcie 2012"
  } }
}

#(set-global-staff-size 18)

\score {
  \new ChoirStaff <<
    \new Staff = "Upper" <<
      \new Voice = "vSoprano" { 
        % Move sopranos' ambitus a bit to the right of the altos'.
        \override Ambitus #'X-offset = #2.0
        % voiceOne has its note stems pointing upwards
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" { \verseOne }
    \new Lyrics \lyricsto "vSoprano" { \verseTwo }
    \new Lyrics \lyricsto "vSoprano" { \verseThree }
    \new Dynamics { \dynamics }
    \new Lyrics \lyricsto "vSoprano" { \verseOneNL }
    \new Lyrics \lyricsto "vSoprano" { \verseTwoNL }
    \new Lyrics \lyricsto "vSoprano" { \verseThreeNL }

    \new Staff = "lower" <<
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
    }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
      \new Lyrics \lyricsto "vBass" { \verseOneBass }
  >>

  \layout { 
    \context { \Voice
      \consists "Ambitus_engraver"
    }
    \context { \Staff 
      % place dynamics closer to staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
    }
    \context {
      \Lyrics
      % relative change to font: one size smaller
      \override LyricText #'font-size = #-1
    }
    \context { \Lyrics 
      % place lyrics closer to staff
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
