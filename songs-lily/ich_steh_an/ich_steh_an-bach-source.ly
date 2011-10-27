% vim: set fileformat=dos:

\version "2.12.3"

soprano = \relative g' {
    \clef "treble" \key g \major \time 4/4 \partial 4 
    \repeat volta 2 {
      g4 | % 1
      g8 ( [ a8 ) ] b4 a4 g4 | % 2
      a4 a4 b4 \breathe g8 ( [ a8 ) ] | % 3
      b4 c4 d4 c8 ( [ b8 ) ] | % 4
      a8 ( [ g8 ] a4 ) g4 
    }
    b4 
    b4 a4 g4 fis4 | % 7
    g8 ( [ a8 ) ] b4 a4 \breathe a4 | % 8
    g4 fis4 g4 d4 | % 9
    g4 a4 b4 \breathe g8 ( [ a8 ) ] |
    b4 c4 d4 c8 ( [ b8 ) ] | % 11
    a8 ( [ g8 ] a4 ) g4 \bar "|."
}

alto = \relative d' {
    \clef "treble" \key g \major \time 4/4 \partial 4 \repeat volta 2 {
        d4 | % 1
        e8 ( [ fis8 ) ] g4 g8 ( [ fis8 ) ] g4 | % 2
        g4 fis4 g4 \breathe e8 ( [ fis8 ) ] | % 3
        g8 b4( a16[ g16]) fis4 g4 | % 4
        g4 ( fis4 ) d4 }
    g4 
    g4. fis8 fis8[( e8]) e8[( dis8]) | % 7
    e4 d4 d4 \breathe d4 | % 8
    d8 ( [ c8 ) ] d4 d8 ( [ c8 ) ] b4 | % 9
    b4 e4 dis4 \breathe b4 |
    e4 e4 d8 ( [ e16 fis16 ) ] g4 | % 11
    g4 ( fis4 ) d4 \bar "|."
}

tenor = \relative b {
    \clef "treble_8" \key g \major \time 4/4 \partial 4 \repeat volta 2 {
        b4 | % 1
        b4 e4 e8 ( [ d8 ) ] d4 | % 2
        e8 ( [ c8 ) ] a8 ( [ d8 ) ] d4 \breathe e4 | % 3
        d4 g,8 ( [ a8 ) ] b8 ( [ c8 ) ] d4 | % 4
        d4 ( c8 [ b8 ) ] b4 }
    d4 
    d4 d8 ( [ c8 ) ] b8 ( [ c8 ) ] fis,8 ( [ b8 ) ] | % 7
    b8 ( [ a8 ) ] a8 ( [ g8 ) ] fis4 \breathe fis4 | % 8
    g8([ a8)] b8([ c8)] b8([ a8)] g4 | % 9
    g4 fis8 ( [ e8 ) ] fis4 \breathe e8 ( [ fis8 ) ] | 
    g4. a8 b8 ( [ c8 ) ] d4 | % 11
    d4 ( c8 [ b8 ) ] b4 \bar "|."
}

bass = \relative g {
    \clef "bass" \key g \major \time 4/4 \partial 4 \repeat volta 2 {
        g8 ( [ fis8 ) ] | % 1
        e4. d8 c4. b8 | % 2
        c8 ( [ a8 ) ] d4 g,4 \breathe c4 | % 3
        g'8 ( [ fis8 ) ] e4 b'8 ( [ a8 ) ] g4 | % 4
        d'4 ( d,4 ) g4 }
    g8 ( [ a8 ) ] 
    b8 ( [ c8 ) ] d4 g,8 ( [ a8 ) ] b4 | % 7
    e,8 ( [ fis8 ) ] g4 d4 \breathe d'8[( c8)] | % 8
    b4. a8 g4. fis8 | % 9
    e8 ( [ d8 ) ] c4 b4 \breathe e4 |
    e8 ( [ d8 ) ] c4 b8 ( [ a8 ) ] g4 | % 11
    d'2 g,4 \bar "|."
}

verseOne = \lyricmode {
  Ich steh __ an dei -- ner Krip pen hier, 
  o __ Je -- su -- lein,
  mein __ Le -- ben 
  Nimm hin! Es ist mein Geist __ und Sinn, 
  Herz, Seel und Mut, 
  nimm al -- les hin, 
  und __ lass "dir’s" wohl -- ge -- fal -- len.
}
