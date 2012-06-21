% vim: set fileformat=dos:
\version "2.12.3"

\include "jingle_bells-karpiniec-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"acoustic grand" \soprano }
    \new Voice = "vAlto" { \set midiInstrument = #"acoustic grand" \alto }
    \new Voice = "vTenor" { \set midiInstrument = #"acoustic grand" \tenor }
    \new Voice = "vBass" { \set midiInstrument = #"acoustic grand" \bass }
  >>
  \midi {
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice 
      \consists "Staff_performer" 
    }
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) }
  }
}
