\version "2.12.3"

\include "once_in_royal-mann-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"acoustic grand" \sopranoMidi }
    \new Voice = "vAlto" { \set midiInstrument = #"acoustic grand" \altoMidi }
    \new Voice = "vTenor" { \set midiInstrument = #"acoustic grand" \tenorMidi }
    \new Voice = "vBass" { \set midiInstrument = #"acoustic grand" \bassMidi }
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = \miditempo }
  }
}
