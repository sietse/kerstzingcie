% vim: set fileformat=dos:
\version "2.12.3"

\include "o_little_town-anon1-source.ly"

\score {
  \new Staff <<
    \new Voice = "vDescant" { \set midiInstrument = #"glockenspiel" 
      \descantskip \descantdescant }
    \new Voice = "vSoprano" { \set midiInstrument = #"glockenspiel"
      \soprano \sopranodescant }
    \new Voice = "vAlto" { \set midiInstrument = #"cello" 
      \alto }
    \new Voice = "vTenor" { \set midiInstrument = #"glockenspiel" 
      \tenor \tenordescant }
    \new Voice = "vBass" { \set midiInstrument = #"glockenspiel" 
      \bass }
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 220 4) }
  }
}
