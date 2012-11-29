% vim: set fileformat=dos:
\version "2.12.3"

miditempo = #(ly:make-moment 120 4)

soprano = {
  \clef "treble" 
  \key f \major 
  \time 4/4 
  \partial 4 c''4 | % 1
  c''4 c''4 d''4 c''4 | % 2
  c''2 a'2 | % 3
  bes'2 a'4 g'4 ~ | % 4
  g'4 f'2 e'4 | % 5
  f'2 b'4\rest c''4 | % 6
  c''4 c''4 d''4 c''4 | % 7
  c''2 a'2 | % 8
  bes'2 a'4 g'4 ~ | % 9
  g'4 f'2 e'4 | \barNumberCheck #10
  f'2 b'4\rest a'4 | % 11
  g'4 e'4 f'4 d'4 | % 12
  c'2 b'4\rest c''4 | % 13
  c''4 c''4 d''4 c''4 | % 14
  c''2 a'2 | % 15
  bes'2 a'4 g'4 ~ | % 16
  g'4 f'2 e'4 | % 17
  f'2 b'4\rest
  \bar "|."
}

alto = {
  \clef "treble" 
  \key f \major 
  \time 4/4 
  \partial 4 f'4 | % 1
  f'4 f'4 f'4 f'4 | % 2
  g'2 f'2 | % 3
  f'2 f'4 d'4 | % 4
  c'2 bes2 | % 5
  c'2 s4 f'4 | % 6
  f'4 f'4 f'4 f'4 | % 7
  g'2 f'2 | % 8
  f'2 f'4 d'4 | % 9
  c'2 bes2 | \barNumberCheck #10
  c'2 s4 c'4 | % 11
  c'4 c'4 c'4 ~ c'8 [ b8 ] | % 12
  g2 s4 e'4 | % 13
  f'4 f'4 f'4 f'4 | % 14
  g'2 fis'2 | % 15
  f'2 f'4 d'4 | % 16
  c'2 bes2 | % 17
  c'2 s4 
}

tenor = {
  \clef "bass" 
  \key f \major 
  \time 4/4 
  \partial 4 a4 | % 1
  a4 c'4 bes4 c'4 | % 2
  c'2 c'2 | % 3
  d'2 c'4 bes4 | % 4
  a2 g2 | % 5
  a2 d4\rest a4 | % 6
  a4 c'4 bes4 c'4 | % 7
  c'2 c'2 | % 8
  d'2 c'4 bes4 | % 9
  a2 g2 | \barNumberCheck #10
  a2 d4\rest f4 | % 11
  g4 g4 a4 f4 | % 12
  e2 d4\rest bes4 | % 13
  a4 c'4 bes4 c'4 | % 14
  c'2 c'2 | % 15
  d'2 c'4 bes4 | % 16
  a2 g2 | % 17
  a2 d4\rest 
}

bass = {
  \clef "bass" 
  \key f \major 
  \time 4/4 
  \partial 4 f4 | % 1
  f4 a4 bes4 a4 | % 2
  e2 d2 | % 3
  g,2 a,4 bes,4 | % 4
  c2 c2 | % 5
  f2 s4 f4 | % 6
  a4 a4 bes4 a4 | % 7
  e2 d2 | % 8
  g,2 a,4 bes,4 | % 9
  c2 c2 | \barNumberCheck #10
  f2 s4 f4 | % 11
  e4 a,4 d4 g,4 | % 12
  c2 s4 c4 | % 13
  f4 a4 bes4 a4 | % 14
  e2 d2 | % 15
  g,2 a,4 bes,4 | % 16
  c2 c2 | % 17
  f2 s4 
}

verseOneNL = \lyricmode {
  \set stanza = "1. "
  Er is een roos ont -- lo -- ken 
  uit bar -- re win -- ter -- grond, 
  zo -- als er was ge -- spro -- ken 
  door der pro -- fe -- ten -- mond. 
  En Da -- vids oud ge -- slacht 
  is weer op -- nieuw gaan bloe -- ien 
  in "’t mid" -- den van de nacht. 
}

verseTwoNL = \lyricmode {
  \set stanza = "2. "
  Die roos van ons ver -- lan -- gen, 
  dat uit -- ver -- ko -- ren zaad, 
  is door een maagd ont -- van -- gen 
  uit Gods ver -- bor -- gen raad. 
  Ma -- ri -- a was be -- reid, 
  toen Ga -- bri -- "ël" haar groet -- te 
  in "’t mid" -- den van de tijd. 
}

verseThreeNL = \lyricmode {
  \set stanza = "3. "
  Die bloem van Gods be -- ha -- gen 
  heeft, naar Je -- sa -- ja sprak, 
  de win -- ter -- kou ver -- dra -- gen 
  als al -- ler -- dor -- ste tak. 
  O roos als bloed zo rood, 
  God komt zijn volk be -- zoe -- ken 
  in "’t mid" -- den van de dood. 
}

verseOneDE = \lyricmode {
  \set stanza = "1. "
  Es ist ein Ros ent -- sprung -- en
  aus ei -- ner Wur -- zel zart,
  wie uns die Al -- ten sung -- en,
  von Jes -- se kam die Art
  und hat ein Blüm -- lein bracht
  mit -- ten im kal -- ten Win -- ter,
  wohl zu der hal -- ben Nacht.
}

verseTwoDE = \lyricmode {
  \set stanza = "2. "
  Das Rös -- lein das ich mei -- ne,
  da -- von Je -- sa -- ia sagt,
  Ma -- ri -- a ist’s, die Rei -- ne,
  die uns das Blüm -- lein bracht. 
  Aus Got -- tes ew’ -- gem Rat
  hat sie ein Kind ge -- bo -- ren,
  und blieb ein rei -- ne Magd.
}

verseThreeDE = \lyricmode {
  \set stanza = "3. "
  Das Blü -- me -- lein so klei -- ne,
  das duf -- tet uns so süß,
  mit sei -- nem hel -- len Schei -- ne
  ver -- treibt’s die Fin -- ster -- nis:
  Wahr’ Mensch und wah -- rer Gott,
  hilft uns aus al -- lem Lei -- de,
  ret -- tet von Sünd’ und Tod.
}

verseFourDE = \lyricmode {
  \set stanza = "4. "
  O Je -- su, bis zum Schei -- den
  aus die -- sem Ja -- mer -- thal,
  laß dein Hilf uns ge -- lei -- ten
  hin in den Freu -- den -- saal,
  in dei -- nes Va -- ters Reich,
  da wir dich e -- wig lo -- ben:
  o Gott, uns das ver -- leih’!
}
