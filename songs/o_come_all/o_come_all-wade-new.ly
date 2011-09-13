\header {
  title = "O Come All Ye Faithful"
  subtitle = "Adeste Fideles"
  composer = "John Francis Wade (1711-1786), circa 1743"
  copyright = "Public Domain"
  date = "1743"
  tagline = "Last update: 2009-04-03"
}
\version "2.10.10"
#(set-default-paper-size "letter")
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'delete-intermediate-files #t)

melody = { \time 4/4 \partial 4  { \key g \major g'4 g'2 d'4 g' a'2 d' b'4 a' b' c'' b'2 a'4 g' g'2 fis'4 e' fis' g' a' b' fis'2 e'4. d'8 d'1 d''2 c''4 b' c''2 b' a'4 b' g' a' fis'4. e'8 d'4 b' b' a' b' c'' b'2 a'4 b' b' a' b' c'' b'2 a'4 b' c'' b' a' g' fis'2 g'4 c'' b'2 a'4. g'8 g'2. s4
  \bar "|."
  }
}
alto = {
  { \key g \major d'4 d'2 d'4 d' d'2 d' d'4 d' d' e' d'2 d'4 b b cis' d' cis' d'2 d'4 d' d'2 cis'4. d'8 d'1 d'2 e'8 fis' g'4 g' fis' g'2 d'4 d' e' e' d'2 d'4 b' b' a' b' c'' b'2 a'4 d' d' d' d' d' d'2 d'4 g' e'8 fis' g'4 d' d'8 cis' d'2 d'4 e' d'2 d'4. b8 b2. s4
  \bar "|."
  }
}
tenor = {
  { \key g \major b4 b2 b4 b a2 a g4 a g g g2 fis4 g g2 a4 a a g fis e a2 g4. fis8 fis1 b2 c'4 d' c'2 d' a4 g b c' a4. g8 fis4 r r1 r2. g4 g fis g a g2 fis4 d' c' d' a a a2 g4 g g2 fis4. g8 g2. s4
  \bar "|."
  }
}
bass = {
  { \key g \major g4 g2 b4 g fis2 fis g4 fis g c d2 d4 e e2 d4 a, d b, fis, g, a,2 a,4. d8 d1 b2 a4 g a2 g fis4 g e c d2 d4 r r1 r2. g4 g fis g a g2 fis4 g a g fis e d c b, c d2 d4. g,8 g,2. s4
  \bar "|."
  }
}


  \score {
    \context GrandStaff <<
      \context Staff = upper <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        {   #(set-accidental-style 'modern-cautionary) \melody }
        { \alto}
      >>  
      \context Staff = lower <<
        \set Staff.printPartCombineTexts = ##f
        \clef bass
        \partcombine	{  #(set-accidental-style 'modern-cautionary) \tenor }
        { \bass }
      >>  
    >>
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 55 4 ) } }
\layout {
  between-system-space = 1\mm
  \context {
    \Score
    % defaults
    % (shortest-duration-space . 2.0)
    % (spacing-increment . 1.2)
    % (base-shortest-duration . ,(ly:make-moment 1 8))
    % tighter spacing
    \override SpacingSpanner #'shortest-duration-space = #2.8
    \override SpacingSpanner #'spacing-increment = #0.6
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
    \remove "Bar_number_engraver"
  }
  \context { \Staff 
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
  }
  }
}
\paper { }

