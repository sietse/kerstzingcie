\version "2.12.3"

\include "ich_steh_an-bach-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"glockenspiel" \sopranoMidi }
    \new Voice = "vAlto" { \set midiInstrument = #"cello" \keepWithTag #'twostave \altoMidi }
    \new Voice = "vTenor" { \set midiInstrument = #"glockenspiel" \tenorMidi }
    \new Voice = "vBass" { \set midiInstrument = #"glockenspiel" \bassMidi }
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = \miditempo }
  }
}
