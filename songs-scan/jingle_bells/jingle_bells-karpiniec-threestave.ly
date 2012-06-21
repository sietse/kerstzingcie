% vim: set fileformat=dos:
\version "2.12.3"

\include "jingle_bells-karpiniec-source.ly"

nummer = "10. "

\header {
  title = \markup {\nummer "Jingle Bells"}
  composer = "J.S. Pierpont"
  arranger = "Stefan Karpiniec"
  tagline =  \markup { \center-column {
    "Versie 2012-06-21"
    "Collegium Musicum Kerstzingcie 2011"
  } }
}

% This useful function kills extenders that are too short to be useful
% Combine this with \override LyricExtender #'minimum-length = #0 for
% beautiful results: an extender if there is space, no extender if there
% is not.
#(define (conditional-kill-lyric-extender-callback . args)
   (lambda (grob)
    (let* ((minimum-length
            (if (null? args)
             (ly:grob-property grob 'minimum-length 0)
             (car args)))
           (X-extent (ly:stencil-extent (ly:grob-property grob 'stencil empty-stencil) X))
           (length (- (cdr X-extent) (car X-extent))))
     (if (> minimum-length length)
      (ly:grob-suicide! grob)))))

\score {
  \new ChoirStaff <<

    \new Staff = "soprano" <<
      \clef "treble"
      \new Voice = "vSoprano" { \soprano }
    >>

    \new Lyrics \lyricsto "vSoprano" { \refrain \verseOneSop }

    \new Staff = "alto" <<
      \clef "treble"
      \new Voice = "vAlto" { \alto }
    >>

    \new Lyrics \lyricsto "vAlto" \verseOneRest

    \new Staff = "lower" <<
      \clef "bass"
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
      }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Voice 
      \consists "Ambitus_engraver"
    }
    % Beautiful extender lines
    \context { \Lyrics
      \override LyricExtender #'minimum-length = #0
      \override LyricExtender #'after-line-breaking = %
         #(conditional-kill-lyric-extender-callback 1)
    }
    % space-saving tweaks
    %\context { \Staff
      %\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    %}
    %\context { \Lyrics
      %\override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    %}
    %\context { \Lyrics
      %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    %}
  }
}
