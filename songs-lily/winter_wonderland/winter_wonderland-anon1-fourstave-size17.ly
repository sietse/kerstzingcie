% vim: set fileformat=dos:
\version "2.12.3"

% FIXME one with global-staff-size 17; one with v. tight spacing
% FIXME page numbers centered.

\include "winter_wonderland-anon1-source.ly"

nummer = "21. " % FIXME

\header {
  title = \markup {\nummer "Winter Wonderland"}
  arranger = "" % FIXME
  tagline =  \markup { \center-column {
    "Versie 2012-07-30"
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
#(set-global-staff-size 17.5)

\score {
  \new ChoirStaff <<
    \new Staff = "sSoprano" << 
      \clef "treble"
      \new Voice = "vSoprano" { \soprano }
    >>
    \new Lyrics \lyricsto "vSoprano" \verseOneSoprano

    \new Staff = "sAlto" << 
      \clef "treble"
      \new Voice = "vAltoUpper" { \altoUpper }
      \new Voice = "vAltoLower" { \altoLower }
    >>
    \new Lyrics \lyricsto "vAltoUpper" \verseOneAlto

    \new Staff = "sTenor" << 
      \clef "treble_8"
      \new Voice = "vTenor" { \tenor }
    >>
    \new Lyrics \lyricsto "vTenor" \verseOneTenor
    \new Lyrics \lyricsto "vTenor" \verseTwoTenor

    \new Staff = "sBass" << 
      \clef "bass"
      \new Voice = "vBass" { \bass }
    >>
    \new Lyrics \lyricsto "vBass" \verseOneBass
  >>
  \layout { 
    % We can haz ambitus to display pitch range?
    \context { \Staff 
      \consists "Ambitus_engraver"
    }
    % Beautiful extender lines
    \context { \Lyrics
      \override LyricExtender #'minimum-length = #0
      \override LyricExtender #'after-line-breaking = %
         #(conditional-kill-lyric-extender-callback 1)
    }
    % space-saving tweaks
    \context { \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    %\context { \Lyrics
      %\override VerticalAxisGroup #'Y-extent = #'(-0.5 . 0.5)
    %}
    %\context { \Lyrics
      %\override VerticalAxisGroup #'minimum-Y-extent = #'(0.5 . 0.5)
    %}
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0.0 . 0.0)
    }
  }
}
