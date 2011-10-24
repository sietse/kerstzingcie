% vim: set fileformat=dos:

% De noten zijn op vier aparte balken gezet. Om het overtypen/nakijken te
% vergemakkelijken hebben de alten en bassen wel alle stokken naar
% beneden, en de sopranen en tenoren opwaarts; dat wordt aan het eind
% nog mooi gemaakt door de \voiceOne en \voiceTwo opdrachten te
% verwijderen. Idem de bassleutel van de tenoren, dat wordt een
% "treble_8".
\version "2.12.3"

\header {
  title = "Jingle Bells"
  composer = "J.S. Pierpont"
  arranger = "Stefan Karpiniec"
  tagline = "Kerstzingcie 2011"
}

timeAndKey = {
  \key g \major
  \time 2/4
}

soprano = \relative c'' {
  \mark \markup { \italic \bold "Spiritoso" }
  b8\f b8 b4 |
  b8 b8 b4 |
  b8 d8 g,8. a16 |
  b2 |

  c8
}

alto = \relative c'' {
  g8\f g8 g4 |
  g8 g8 g4 |
  g8 d8 e8. fis16 |
  g4 r4 |

  g8
}

tenor = \relative c' {
  d8 d8 d4 |
  d8 d8 d4 |
  d8 a8 b8. c16 |
  b4 r4 |

  e8
}

bass = \relative c' {
  g8 fis8 e8( d8) |
  g8 fis8 e8( d8) |
  g8 fis8 e8. d16 |
  g8 fis8 e8( d8) |
  c8
}

verseOne = \lyricmode {
  Jin -- gle bells, |
  jin -- gle bells, |
  jin -- gle all the |
  way!
  Oh what fun it |
  is to ride in a 
}

verseTwo = \lyricmode {
  A day or two a -- go
  I thought I'd take a ride
}

verseThree = \lyricmode {
  A day or two a -- go,
  the sto -- ry I must tell
}

verseFour = \lyricmode {
  Now the ground is white
  Go it while you’re young
}

% Sopranen en bassen hebben iets andere tekts.
% Duidelijkst om hun tekst gewoon apart in te voeren. Eventueel kan 
% Sietse dat doen.
verseOneSop = \lyricmode {
  Jin -- gle bells,
  etc.
  % evt. voor Sietse laten
}
verseOneBass = \lyricmode {
  Jin -- gle bells, |
  jin -- gle bells, |
  jin -- gle all the |
  way, the way!
  Oh what fun |
  % evt. voor Sietse laten
}


% De layout: wat komt waar?
\score {
  \new ChoirStaff <<
    \new Staff = "sSoprano" << 
      \clef "treble" \timeAndKey
      \new Voice = "vSoprano" { \voiceOne \soprano }
    >>
    \new Lyrics \lyricsto "vSoprano" \verseOneSop

    \new Staff = "sAlto" << 
      \clef "treble" \timeAndKey
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "vAlto" \verseOne

    \new Staff = "sTenor" << 
      \clef "bass" \timeAndKey
      \new Voice = "vTenor" { \voiceOne \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOne

    \new Staff = "sBass" << 
      \clef "bass" \timeAndKey
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "vBass" \verseOneBass
  >>
  \midi {
    \context {
      \Score tempWholesPerMinute = #(ly:make-moment 120 4 )
    }
  }
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
  }
}
