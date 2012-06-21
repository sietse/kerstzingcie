% vim: set fileformat=dos:
\version "2.12.3"

\include "the_first_nowell-stainer-source.ly"

nummer = "9¾. "
varnummer = \markup {
  9\hcenter-in #0.1 \raise #0.7 \small\fraction 3 4 \hcenter-in #0.1 . \hspace #0.8 } 

\header {
  title = \markup {\varnummer "The first Nowell"}
  composer = "English traditional"
  arranger = "Arranged by John Stainer (1840 - 1901)"
  tagline =  \markup { \center-column {
    "Versie 2012-06-18"
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

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.0
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOne
    \new Lyrics \lyricsto "vSoprano" \verseTwo
    \new Lyrics \lyricsto "vSoprano" \verseThree
    \new Lyrics \lyricsto "vSoprano" \verseFour

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
    \context { \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
    }
    \context { \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
