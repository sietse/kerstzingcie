\version "2.12.3"

\include "deck_the_halls-anon1-source.ly"

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
    % 116 4. = 116 3*8 = 348 8
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 348 8) }
  }
}
