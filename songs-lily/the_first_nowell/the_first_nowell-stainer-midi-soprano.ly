\version "2.12.3"

\include "the_first_nowell-stainer-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"cello" \soprano }
    \new Voice = "vAlto" { \set midiInstrument = #"glockenspiel" \alto }
    \new Voice = "vTenor" { \set midiInstrument = #"glockenspiel" \tenor }
    \new Voice = "vBass" { \set midiInstrument = #"glockenspiel" \bass }
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = \miditempo }
  }
}
