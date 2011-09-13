\version "2.12.3"
\include "stille_nacht-source.ly"

\header {
  title = "Stille  Nacht"
  tagline =  \markup { \center-column {
    "Versie 2011-09-07"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

#(set-global-staff-size 18)

\score {
  \new ChoirStaff <<
    \new Dynamics { \dynamics }
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
