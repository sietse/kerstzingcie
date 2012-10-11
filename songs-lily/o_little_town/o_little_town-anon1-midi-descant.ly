% vim: set fileformat=dos:
\version "2.12.3"

\include "o_little_town-anon1-source.ly"

\score {
  \new Staff <<
    \new Voice = "vDescant" { \set midiInstrument = #"cello" 
      \descantdescant }
    \new Voice = "vSoprano" { \set midiInstrument = #"glockenspiel"
      \sopranodescant }
    \new Voice = "vAlto" { \set midiInstrument = #"glockenspiel" 
      \altodescant}
    \new Voice = "vTenor" { \set midiInstrument = #"glockenspiel" 
      \tenordescant }
    \new Voice = "vBass" { \set midiInstrument = #"glockenspiel" 
      \bassdescant}
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 220 4) }
  }
}
