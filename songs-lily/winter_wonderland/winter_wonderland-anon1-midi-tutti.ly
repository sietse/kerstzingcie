% vim: set fileformat=dos:
\version "2.12.3"

\include "winter_wonderland-anon1-source.ly"

\score {
  \new Staff <<
    \new Voice = "vSoprano" { \set midiInstrument = #"acoustic grand" \soprano }
    \new Voice = "vAltoUpper" { 
      \set midiInstrument = #"acoustic grand" \altoUpper }
    \new Voice = "vAltoLower" { 
      \set midiInstrument = #"acoustic grand" \altoLower }
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
