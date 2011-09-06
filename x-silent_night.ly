\header {
  title = "Stille  Nacht"
  composer = "Franz Gruber (1787-1863)"
  copyright = "Public Domain"
  date = ""
  tagline = "Last update: 2009-04-03"
}
\version "2.10.10"
% #(set-default-paper-size "letter")

melody = { 
  \time 6/8 
  \key bes \major 
  f'8. g'16 f'8 d'4. |
  f'8. g'16 f'8 d'4. |
  c''4 c''8 a'4. |
  bes'4 bes'8 f'4. |
  g'4 g'8 bes'8. a'16 g'8 |
  f'8. g'16 f'8 d'4. |
  g'4 g'8 bes'8. a'16 g'8 |
  f'8. g'16 f'8 d'4. |
  c''4 c''8 ees''8. c''16 a'8 |
  bes'4. d''4. |
  bes'8. f'16 d'8 f'8. ees'16 c'8 |
  bes2. |
  \bar "|."
}
alto = {
  \key bes \major 
  d'8. ees'16 d'8 bes4. |
  d'8. ees'16 d'8 bes4. |
  ees'4 ees'8 c'4. |
  d'4 d'8 d'4. |
  ees'4 ees'8 g'8. f'16 ees'8 |
  d'8. ees'16 d'8 bes4. |
  ees'4 ees'8 g'8. f'16 ees'8 |
  d'8. ees'16 d'8 bes4. |
  ees'4 ees'8 a'8. ees'16 c'8 |
  d'4. f'4. |
  d'8. f'16 bes8 d'8. c'16 a8 |
  bes2. |
  \bar "|."
}
tenor = {
  { \key bes \major 
  bes4 bes8 f4. |
  bes4 bes8 f4. |
  a4 a8 f4. |
  f4 f8 bes4. |
  bes4 bes8 g8. a16 bes8 |
  bes8. bes16 bes8 f4. |
  bes4 bes8 g8. a16 bes8 |
  bes8. bes16 bes8 f4. |
  a4 a8 c'8. a16 f8 |
  f4. bes4. |
  bes4 f8 f8. f16 ees8 |
  d2. |
  \bar "|."
  }
}
bass = {
  \key bes \major 
  bes,4 bes,8 bes,4. |
  bes,4 bes,8 bes,4. |
  f4 f8 f4. |
  bes,4 bes,8 bes,4. |
  ees4 ees8 ees8. ees16 ees8 |
  bes,8. bes,16 bes,8 bes,4. |
  ees4 ees8 ees8. ees16 ees8 |
  bes,8. bes,16 bes,8 bes,4. |
  f4 f8 f8. f16 f8 |
  bes,2 ( bes,4 ) |
  f4 f8 f,8. f,16 f,8 |
  bes,2. |
  \bar "|."
}


  \score {
    \context GrandStaff <<
      \context Staff = upper <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
          { #(set-accidental-style 'modern-cautionary) \melody }
          { \alto}
      >>  
      \context Staff = lower <<
        \set Staff.printPartCombineTexts = ##f
        \clef bass
        \partcombine	
          { #(set-accidental-style 'modern-cautionary) \tenor }
          { \bass }
      >>  
    >>
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 50 4 ) } }
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
