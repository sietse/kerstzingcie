\version "2.12.3"

\include "ich_steh_an-bach-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"glockenspiel" \soprano }
    \new Voice = "vAlto" { \set midiInstrument = #"cello" \alto }
    \new Voice = "vTenor" { \set midiInstrument = #"glockenspiel" \tenor }
    \new Voice = "vBass" { \set midiInstrument = #"glockenspiel" \bass }
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) }
  }
}
