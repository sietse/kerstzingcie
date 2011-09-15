\version "2.12.3"

\header {
  title = "Rejoice and be Merry"
  composer = "Traditional English West Country"
  tagline = "Kerstzingcie 2011"
  poet = "Traditional Dorset"
}

timeAndKey = {
  \key g \major
  \time 3/4
}

soprano = \relative c' {
  \partial 4 d4 |
  g fis g |
  a b c |
  d c b |
  a2 b4 |
  c b c |
  d d c |
  b4. c8 a4 |
  g2 
  
  d'4 |
  d c b |
  c b c |
  d c b |
  a2 d,4 |
  g b c8 e |
  d4 d c |
  b4. c8 a4 |
  g2 \bar "|."
}

alto = \relative c' {
  \partial 4 d8 c |
  b4 a b8 e |
  d4 g fis |
  g a g |
  g fis g |
  g fis e |
  d fis e |
  g4. a8 fis4 |
  g2 
  
  b8 a |
  b4 a g |
  g4. fis8 e4 | 
  g fis g |
  fis( d) d8 c |
  b4 d e8 fis |
  g8[ fis8 e8 d8] e8[ fis8] |
  g4. a8 fis4 |
  g2 \bar "|."
}

men = \relative c {
  \partial 4 fis4 |
  g d g |
  fis e d8 c |
  b4 d g | 
  d2 g8 fis |
  e4 d c |
  b b c |
  d4. d8 d4 |
  g2
  
  g4 |
  e fis g |
  e d c |
  b d g |
  d2 fis4 |
  g8[ fis] e[ d] c4 |
  b b c |
  d4. d8 d4 |
  g2 \bar "|."
}

verseOne = \lyricmode {
  Re4 -- joice and be mer -- ry in songs and in mirth!
  O praise our Re -- deem -- er, all mor -- tals on earth!
  For this is the birth -- day of Je -- sus our King,
  Who brought us sal4 - va4 -- tion;4 his prai -- ses we’ll sing!
}

% De rest van de verzen kunnen onderaan worden ingevuld.

% Stop de muziek in de layout
\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \timeAndKey
      \new Voice = "vSoprano" { \voiceOne \soprano }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne

    \new Staff = "lower" <<
      \clef "bass"
      \timeAndKey
      \new Voice = "vMen" { \men }
    >>
  >>
  % Produce midi output
  \midi {
    \context {
      \Score tempWholesPerMinute = #(ly:make-moment 100 4 )
    }
  }
  % Produce PDF output
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
  }
}

  
  
% Hackery to put the verses on the page.
\markup {
  
  % \vspace #12 
  % Bovenstaand commando werkt niet.
  
  \fill-line {
    %\hspace #0.1 % moves the column off the left margin;
        % can be removed if space on the page is tight
    \column {
       \line{ \column{ " " }} % TODO: Weghalen zodra we hebben ontdekt hoe je op legi-
       \line{ \column{ " " }} % TODO: tieme wijze meer horizontale ruimte toevoegt.
       
       \line{ \bold "1." \column{ "Rejoice and be merry in songs and in mirth!" }}
       \line{\hspace #2 \column{ "O praise the Redeemer, all mortals on earth!" }}
       \line{\hspace #2 \column{ "For this is the birtheday of Jesus our King," }}
       \line{\hspace #2 \column{ "Who brought us salvation; his praises we'll sing." }}
       
      \hspace #0.1 % adds vertical spacing between verses
      
       \line{ \bold "2." \column{ "A heavenly vision appeared in the sky," }}
       \line{\hspace #2 \column{ "Vast numbers of angels the shepherds did spy," }}
       \line{\hspace #2 \column{ "Proclaiming the birthday of Jesus our King," }}
       \line{\hspace #2 \column{ "Who brought us salvation; his praises we'll sing." }}
    }
    \hspace #0.1  % adds horizontal spacing between columns;
        % if they are still too close, add more " " pairs
        % until the result looks good
    \column {
       \line{ \column{ " " }} % TODO: Weghalen zodra we hebben ontdekt hoe je op legi-
       \line{ \column{ " " }} % TODO: tieme wijze meer horizontale ruimte toevoegt.
       
       \line{ \bold "3." \column{ "Likewise a bright star in the sky did appear," }}
       \line{\hspace #2 \column{ "Which led the wise men from the east to draw near;" }}
       \line{\hspace #2 \column{ "They found the Messiah, sweet Jesus our King," }}
       \line{\hspace #2 \column{ "Who brought us salvation; his praises we'll sing." }}
       
      \hspace #0.1 % adds vertical spacing between verses
      
       \line{ \bold "4." \column{ "And when they were come, they their treasures unfold," }}
       \line{\hspace #2 \column{ "And unto him offered myrrh, incense, and gold." }}
       \line{\hspace #2 \column{ "So blessed for ever be Jesus our King," }}
       \line{\hspace #2 \column{ "Who brought us salvation; his praises we'll sing." }}
    }
    \hspace #0.1 % gives some extra space on the right margin;
      % can be removed if page space is tight
    \column{" "}
  }
}
