% vim: set fileformat=dos:
\version "2.12.3"

\include "away_in_a-willcocks-source.ly"

nummer = "04. "

\header {
  title = \markup {\nummer "Away in a Manger"}
  composer = "W.J. Kirkpatrick (1838-1921)"
  arranger = "Arranged by David Willcocks"
  tagline = \markup { \center-column {
    "Versie 2011-10-31"
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
% The normal size of the music font is 20, but that gets things *really*
% jammed together.
#(set-global-staff-size 18)

\score {
  \new ChoirStaff <<
    \new Staff = "sSoprano" << 
      \new Voice = "vSoprano" { \soprano }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne
    \new Lyrics \lyricsto "vSoprano" \verseTwo
    \new Lyrics \lyricsto "vSoprano" \verseThree

    \new Staff = "sAlto" << 
      \new Voice = "vAlto" { \alto }
    >>

    \new Staff = "sTenor" << 
      \new Voice = "vTenor" { \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOne
    \new Lyrics \lyricsto "vTenor" \verseTwo
    \new Lyrics \lyricsto "vTenor" \verseThree

    \new Staff = "sBass" << 
      \new Voice = "vBass" { \bass }
    >>

  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
    % space-saving tweaks
    %\context { \Staff
    %  \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    %}
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
    \context { \Lyrics
      \override LyricExtender #'minimum-length = #0
      \override LyricExtender #'after-line-breaking = %
         #(conditional-kill-lyric-extender-callback 1)
    }
  }
}
