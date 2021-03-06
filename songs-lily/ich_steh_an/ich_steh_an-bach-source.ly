% vim: set fileformat=dos:

\version "2.12.3"

miditempo = #(ly:make-moment 100 4)

sopranoVerse = \relative g' {
    \clef "treble" 
    \key g \major 
    \time 4/4 
    \partial 4 
    \repeat volta 2 {
      g4 | % 1
      g8 ( [ a8 ) ] b4 a4 g4 | % 2
      a4 a4 b4 \breathe g8 ( [ a8 ) ] | % 3
      b4 c4 d4 c8 ( [ b8 ) ] | % 4
      a8 ( [ g8 ] a4 ) g4 
    }
}
sopranoChorus = \relative b' {
    b4 
    b4 a4 g4 fis4 | % 7
    g8 ( [ a8 ) ] b4 a4 \breathe a4 | % 8
    g4 fis4 g4 d4 | % 9
    g4 a4 b4 \breathe g8 ( [ a8 ) ] |
    b4 c4 d4 c8 ( [ b8 ) ] | % 11
    a8 ( [ g8 ] a4 ) g4 \bar "|."
}
soprano = { \sopranoVerse \sopranoChorus }
sopranoMidi = { \sopranoVerse \sopranoVerse \sopranoChorus }


altoVerse = \relative d' {
    \clef "treble" 
    \key g \major 
    \time 4/4 
    \partial 4 \repeat volta 2 {
        d4 | % 1
        e8 ( [ fis8 ) ] g4 g8 ( [ fis8 ) ] g4 | % 2
        g4 fis4 g4 \breathe e8 ( [ fis8 ) ] | % 3
        %\slurDown
        \tag #'twostave  { g8( b4) }
        \tag #'fourstave {  g8( \stemUp b4) \stemNeutral }
          a16[( g16]) fis4 g4 | % 4
        g4 ( fis4 ) d4 
    }
}
altoChorus = \relative g' {
    g4 
    g4. fis8 fis8[( e8]) e8[( dis8]) | % 7
    e4 d4 d4 \breathe d4 | % 8
    d8 ( [ c8 ) ] d4 d8 ( [ c8 ) ] b4 | % 9
    b4 e4 dis4 \breathe b4 |
    e4 e4 d8 ( [ e16 fis16 ) ] g4 | % 11
    g4 ( fis4 ) d4 \bar "|."
}
alto = { \altoVerse \altoChorus }
altoMidi = { \altoVerse \altoVerse \altoChorus }

tenorVerse = \relative b {
    \clef "treble_8" 
    \key g \major 
    \time 4/4 
    \partial 4 
    \repeat volta 2 {
        b4 | % 1
        b4 e4 e8 ( [ d8 ) ] d4 | % 2
        e8 ( [ c8 ) ] a8 ( [ d8 ) ] d4 \breathe e4 | % 3
        d4 g,8 ( [ a8 ) ] b8 ( [ c8 ) ] d4 | % 4
        d4 ( c8 [ b8 ) ] b4 
    }
}
tenorChorus = \relative d' {
    d4 
    d4 d8 ( [ c8 ) ] b8 ( [ c8 ) ] fis,8 ( [ b8 ) ] | % 7
    b8 ( [ a8 ) ] a8 ( [ g8 ) ] fis4 \breathe fis4 | % 8
    g8([ a8)] b8([ c8)] b8([ a8)] g4 | % 9
    g4 fis8 ( [ e8 ) ] fis4 \breathe e8 ( [ fis8 ) ] | 
    g4. a8 b8 ( [ c8 ) ] d4 | % 11
    d4 ( c8 [ b8 ) ] b4 \bar "|."
}
tenor = { \tenorVerse \tenorChorus }
tenorMidi = { \tenorVerse \tenorVerse \tenorChorus }


bassVerse = \relative g {
    \clef "bass" 
    \key g \major 
    \time 4/4 
    \partial 4 
    \repeat volta 2 {
        g8 ( [ fis8 ) ] | % 1
        e4. d8 c4. b8 | % 2
        c8 ( [ a8 ) ] d4 g,4 \breathe c4 | % 3
        g'8 ( [ fis8 ) ] e4 b'8 ( [ a8 ) ] g4 | % 4
        d'4 ( d,4 ) g4 
    }
}
bassChorus = \relative g {
    g8 ( [ a8 ) ] 
    b8 ( [ c8 ) ] d4 g,8 ( [ a8 ) ] b4 | % 7
    e,8 ( [ fis8 ) ] g4 d4 \breathe d'8[( c8)] | % 8
    b4. a8 g4. fis8 | % 9
    e8 ( [ d8 ) ] c4 b4 \breathe e4 |
    e8 ( [ d8 ) ] c4 b8 ( [ a8 ) ] g4 | % 11
    d'2 g,4 
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \override Score.RehearsalMark #'padding = #5
    \mark \markup {\italic "Zweimal singen" }

    \bar "|."
}
bass = { \bassVerse \bassChorus }
bassMidi = { \bassVerse \bassVerse \bassChorus }

dropLyrics = {
    \override LyricText #'extra-offset = #'(0 . -1)
    \override LyricHyphen #'extra-offset = #'(0 . -1)
    \override LyricExtender #'extra-offset = #'(0 . -1)
}

raiseLyrics = {
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

verseOneSoprano = \lyricmode {
  Ich steh’ an dei -- ner Krip -- pen hier, 
  o __ Je -- su -- lein,
  mein Le -- ben,
  \dropLyrics
  Nimm hin! Es ist mein 
      \once \override LyricText #'X-extent = #'(0 . 1)
      Geist und Sinn, 
  Herz, __ 
  \raiseLyrics
    Seel’ und __ Mut, nimm al -- les hin, 
  und lass dir’s wohl -- ge -- fal -- len.
}

verseOneAlto = \lyricmode {
  Ich steh’ an dei -- ner Krip -- pen hier, 
  o __ Je -- su -- lein,
  mein __ Le -- ben,
  \dropLyrics
  Nimm hin! Es __ ist __ 
      \once \override LyricText #'X-extent = #'(0 . 1)
      mein 
      Geist und Sinn, 
  Herz, __ 
  \raiseLyrics
    \once \override LyricText #'X-extent = #'(0 . 1)
    Seel’ " und"
    \once \override LyricText #'X-extent = #'(0 . 1)
    Mut, " nimm " al -- les hin, 
  und lass dir’s 
  wohl -- ge -- fal -- len.
}

verseOneTenor = \lyricmode {
  Ich steh’ an dei -- ner Krip -- pen __ hier, 
  o __ Je -- su -- lein,
  mein __ Le -- ben,
  \dropLyrics
  Nimm hin! Es __ ist __ 
      \once \override LyricText #'X-extent = #'(0 . 1)
      mein 
      \once \override LyricText #'X-extent = #'(0 . 1)
      Geist und Sinn, 
  Herz, __ 
  \raiseLyrics
    Seel’ und __
    \once \override LyricText #'X-extent = #'(0 . 1)
    Mut, " nimm" al -- les __ hin, 
  und lass dir’s 
    \once \override LyricText #'X-extent = #'(0 . 1)
  wohl "- ge" -- fal -- len.
}

verseOneBass = \lyricmode {
  Ich steh’ an dei -- ner Krip -- pen __ hier, 
  o __ Je -- su -- lein,
  mein __ Le -- ben,
  \dropLyrics
  Nimm hin! Es __ ist __ 
      mein 
      \once \override LyricText #'X-extent = #'(0 . 1)
      Geist und Sinn, 
  Herz, __ 
  \raiseLyrics
    Seel’ und __
    \once \override LyricText #'X-extent = #'(0 . 1)
    Mut, nimm al -- les __ hin, 
  und lass dir’s wohl -- ge -- fal -- len.
}


verseTwo = \lyricmode {
  Ich kom -- me, bring’ und schen -- ke __ dir,
  was du mir hast ge -- ge -- ben.
}
