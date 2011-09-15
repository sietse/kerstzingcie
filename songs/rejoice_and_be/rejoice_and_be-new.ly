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
  g4 fis4 g4 |
}

alto = \relative c' {
  \partial 4 d8 c8 |
  b4 a4 b8 e8 |
}

men = \relative c {
  \partial 4 f4 |
  g4 d4 g4 |
}

verseOne = \lyricmode {
  Re --
  joice and be __
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
  \fill-line {
    %\hspace #0.1 % moves the column off the left margin;
        % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
        \column {
          "Rejoice and be merry in songs and in mirth!"
        }
      }
      \hspace #0.1 % adds vertical spacing between verses
      \line { \bold "2."
        \column {
          "A heavenly vision appeared in the sky,"
        }
      }
    }
    \hspace #0.1  % adds horizontal spacing between columns;
        % if they are still too close, add more " " pairs
        % until the result looks good
     \column {
      \line { \bold "3."
        \column {
          "Likewise a bright star in the sky did appear,"
        }
      }
      \hspace #0.1 % adds vertical spacing between verses
      \line { \bold "4."
        \column {
          "And when they were come, they their treasures unfold,"
        }
      }
    }
  \hspace #0.3 % gives some extra space on the right margin;
      % can be removed if page space is tight
  }
}
