% vim: set fileformat=dos:
\version "2.12.3"

\include "winter_wonderland-anon1-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"glockenspiel" \soprano }
    \new Voice = "vAltoUpper" { 
      \set midiInstrument = #"glockenspiel" \altoUpper }
    \new Voice = "vAltoLower" { 
      \set midiInstrument = #"glockenspiel" \altoLower }
    \new Voice = "vTenor" { \set midiInstrument = #"cello" \tenor }
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
