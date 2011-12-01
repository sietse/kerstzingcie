% vim: set fileformat=dos:
\version "2.12.3"

soprano = {
  \clef "treble" 
  \key g \major 
  \time 4/4 
  \partial 2 
    d'4 g'4 | % 1
  g'4. fis'8 g'4 b'4 | % 2
  b'4( a'4) d''4 d''4 | % 3
  d''4. c''8 b'4 a'4 | % 4
  b'2 \bar "||" \noBreak
  d'4 g'4 | % 5
  g'4. fis'8 g'4 b'4 | % 6
  b'4( a'4) d''4 a'4 | % 7
  a'4. fis'8 fis'4 e'4 | % 8
  d'2 d''4 d''4 | % 9
  d''4 g'4 c''4 b'4 | \barNumberCheck #10
  b'4( a'4) d''4 d''4 | % 11
  d''4 g'4 c''4 b'4 | % 12
  b'4( a'4) e''4 e''4 | % 13
  e''4 d''4 c''4 b'4 | % 14
  c''2 a'4 b'8([ c''8)] | % 15
  d''4. g'8 g'4 a'4 | % 16
  b'2 e''4. e''8 | % 17
  e''4 d''4 c''4 b'4 | % 18
  c''2 a'4 b'8 ( [ c''8 ) ] | % 19
  d''4. g'8 g'4 a'4 | \barNumberCheck #20
  g'2 
  \bar ":|"
}

alto = {
  \clef "treble" 
  \key g \major 
  \time 4/4 
  \partial 2 
    d'4 d'4 | % 1
  g'4. fis'8 d'4 g'4 | % 2
  g'4( fis'4) g'4 fis'4 | % 3
  e'4 a'4 g'4 fis'4 | % 4
  g'2 \bar "||"
  d'4 d'4 | % 5
  d'4. c'8 b4 g'4 | % 6
  g'2 fis'4 e'4 | % 7
  fis'4. d'8 d'4 cis'4 | % 8
  d'2 d'4 d'4 | % 9
  d'4 g'4 a'4 g'4 | \barNumberCheck #10
  g'4( fis'4) d'4 d'4 | % 11
  d'4 g'4 a'4 g'4 | % 12
  g'4( fis'4) c''4 c''4 | % 13
  c''4 b'4 a'4 gis'4 | % 14
  a'2 fis'4 fis'4 | % 15
  g'4. d'8 d'4 fis'4 | % 16
  g'2 c''4. c''8 | % 17
  c''4 b'4 a'4 gis'4 | % 18
  a'2 d'4 fis'4 | % 19
  g'4. d'8 d'4 fis'4 | \barNumberCheck #20
  d'2 
}

tenor = {
  \clef "bass" 
  \key g \major 
  \time 4/4 
  \partial 2 
    b4 b4 | % 1
  b4. a8 g4 d'4 | % 2
  d'2 d'4 d'4 | % 3
  e'4 e'4 d'4 d'4 | % 4
  d'2 \bar "||"
  b4 b4 | % 5
  b4. a8 g4 d'4 | % 6
  e'2 d'4 e'4 | % 7
  a4. a8 b4 g4 | % 8
  fis2 d'4 d'4 | % 9
  d'4 d'4 d'4 d'4 | \barNumberCheck #10
  d'2 d'4 d'4 | % 11
  d'4 d'4 d'4 d'4 | % 12
  d'2 e'4 e'4 | % 13
  e'4 f'4 e'4 e'4 | % 14
  c'2 d'4 d'4 | % 15
  d'4. b8 b4 d'4 | % 16
  d'2 e'4. e'8 | % 17
  e'4 d'4 c'4 b4 | % 18
  c'2 d'4 d'4 | % 19
  d'4. b8 b4 c'4 | \barNumberCheck #20
  b2 
}

bass = {
  \clef "bass" 
  \key g \major 
  \time 4/4 
  \partial 2 
    g4 g4 | % 1
  g4 d4 b,4 g,4 | % 2
  d2 b,4 b,4 | % 3
  c4 c4 d4 d4 | % 4
  g2 \bar "||"
  g4 g4 | % 5
  g4. d8 e4 d4 | % 6
  cis4.( a,8) b,4 c4 | % 7
  a4. a8 g,4 a,4 | % 8
  d2 d'4 d'4 | % 9
  d'4 b4 fis4 g4 | \barNumberCheck #10
  d2 d'4 d'4 | % 11
  d'4 b4 fis4 g4 | % 12
  d2 c4 c4 | % 13
  c4 d4 e4 e4 | % 14
  a2 d'4 c'4 | % 15
  b4. g8 d4 d4 | % 16
  g2 c'4. c'8 | % 17
  c'4 b4 a4 gis4 | % 18
  a2 fis4 c'4 | % 19
  b4 g4 d4 d4 | \barNumberCheck #20
  g2 
}

verseOneNL = \lyricmode {
  Hoor, de eng’ -- len zing -- en d’eer
  van de nieuw ge -- bo -- ren Heer!
  Vreed’ op aar -- de, "’t is" ver -- vuld:
  God ver -- zoent der men -- sen schuld.
  Voegt u vol -- ken in het koor,
  dat weer -- klinkt de he -- mel door,
  zingt met al -- ge -- me -- ne stem
  voor het __ kind van Beth -- le -- hem;
}

verseTwoNL = \lyricmode {
  Hij die heerst op "’s He" -- mels troon,
  He -- re Chris -- tus, Va -- ders Zoon,
  wordt ge -- bo -- ren uit een maagd
  op de tijd die God be -- haagt.
  Zon -- ne der ge -- rech -- tig -- heid,
  woord dat vlees ge -- wor -- den zijt,
  tus -- sen al -- le men -- sen in,
  in het __ men -- se -- lijk ge -- zin;
  Hoor, de eng’ -- len zing -- en d’eer
  van de nieuw ge -- bo -- ren Heer.
}

verseThreeNL = \lyricmode {
  Lof aan U die eeu -- wig leeft
  en op aar -- de vre -- de geeft.
  Gij die ons ge -- wor -- den zijt
  taal en te -- ken in de tijd:
  Al uw glo -- rie legt gij af,
  ons tot red -- ding uit het graf,
  dat wij on -- ge -- rept en rein
  nieuw -- ge -- bo -- ren zou -- den zijn;
}

verseOneEN = \lyricmode {
  Hark! the he -- "rald -" an -- gels sing
  glo -- ry to the new -- born King;
  Peace on earth and mer -- cy mild,
  God and sin -- ners re -- con -- ciled;
  joy -- ful all ye na -- tions rise,
  join the tri -- umph of the skies,
  with th’an -- gel -- ic host pro -- claim,
  Christ is born in Beth -- le hem.
}

verseTwoEN = \lyricmode {
  Christ, by high -- est heav’n a -- dored,
  Christ, the e -- ver -- last -- ing Lord;
  Late in time be -- hold him come,
  off -- spring of a vir -- gin’s womb:
  Veiled in flesh the God -- head see,
  hail th’in -- car -- nate De -- i -- ty!
  Pleased as man with man to dwell,
  Je -- sus, our Em -- ma -- nu -- el.
  Hark! the he -- rald -- an -- gels sing
  glo -- ry to the new -- born King.
}

verseThreeEN = \lyricmode {
  Hail the heav’n -- born Prince of Peace!
  Hail the sun of righ -- teous -- ness!
  Light and live to all he brings,
  ris’n with hea -- ling in his wings:
  Mild he lays his glo -- ry by,
  born that man no more may die,
  born to raise the sons of earth,
  born to give them se -- cond birth:
}
