\version "2.12.3"

\include "es_ist_ein-anon1-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"glockenspiel" \soprano }
    \new Voice = "vAlto" { \set midiInstrument = #"glockenspiel" \alto }
    \new Voice = "vTenor" { \set midiInstrument = #"glockenspiel" \tenor }
    \new Voice = "vBass" { \set midiInstrument = #"cello" \bass }
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = \miditempo }
  }
}
