% vim: set fileformat=dos:
\version "2.12.3"

\include "o_little_town-anon1-source.ly"

\score {
  \new Staff <<
    \new Voice = "vDescant" { \set midiInstrument = #"acoustic grand" 
      \descantskip \descantdescant }
    \new Voice = "vSoprano" { \set midiInstrument = #"acoustic grand"
      \soprano \sopranodescant }
    \new Voice = "vAlto" { \set midiInstrument = #"acoustic grand" 
      \alto \altodescant}
    \new Voice = "vTenor" { \set midiInstrument = #"acoustic grand" 
      \tenor \tenordescant }
    \new Voice = "vBass" { \set midiInstrument = #"acoustic grand" 
      \bass \bassdescant}
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 220 4) }
  }
}
