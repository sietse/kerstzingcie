% vim: set fileformat=dos:
\version "2.12.3"

\include "jingle_bells-karpiniec-source.ly"

nummer = "10. "

\header {
  title = \markup {\nummer "Jingle Bells"}
  composer = "James Lord Pierpont"
  arranger = "Arranged by Stefan Karpiniec"
  tagline =  \markup { \center-column {
    "Versie 2012-06-22"
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

% Make everything a bit smaller. 
#(set-global-staff-size 18)

% Ragged bottom, please --- page 1, at least, looks silly spaced out.
\paper {
  ragged-bottom = ##t
}

\score {
  \new ChoirStaff <<

    \new Staff = "soprano" <<
      \clef "treble"
      \new Voice = "vSoprano" { \soprano }
    >>

    \new Lyrics \lyricsto "vSoprano" { \verseOneSop }
    \new Lyrics \lyricsto "vSoprano" { \verseTwoSop }
    \new Lyrics \lyricsto "vSoprano" { \verseThreeSop }
    \new Lyrics \lyricsto "vSoprano" { \verseFourSop }

    \new Staff = "alto" <<
      \clef "treble"
      \new Voice = "vAlto" { \alto }
    >>

    \new Lyrics \lyricsto "vAlto" \verseOneRest
    \new Lyrics \lyricsto "vAlto" \verseTwoRest
    \new Lyrics \lyricsto "vAlto" \verseThreeRest
    \new Lyrics \lyricsto "vAlto" \verseFourRest

    \new Staff = "lower" <<
      \clef "bass"
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \tenor 
      }
      \new Voice = "vBass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "vBass" \refrainBass
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
    %space-saving tweaks
    %\context { \Staff
      %\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    %}
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
