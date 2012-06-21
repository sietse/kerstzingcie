% vim: set fileformat=dos:
\version "2.12.3"

\include "hark_the_herald-anon1-source.ly"

nummer = "19. "

\header {
  title = \markup {\nummer "Hark! the herald-angels sing"}
  poet = \markup { \left-column { 
    "Words by Charles Wesley (1707-1788)"
    "and others" 
  } }
  composer = "J.L.F. Mendelssohn Bartholdy (1809–1847)"
  tagline =  \markup { \center-column {
    "Versie 2012-06-20"
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

% Fit the systems on one page
#(set-global-staff-size 18)

\score {
  \new ChoirStaff <<
    \new Staff = "upper" <<
      \clef "treble"
      \new Voice = "vSoprano" { 
        \override Ambitus #'X-offset = #2.5
        \voiceOne \soprano 
      }
      \new Voice = "vAlto" { \voiceTwo \alto }
    >>

    \new Lyrics \lyricsto "vSoprano" \verseOneEN
    \new Lyrics \lyricsto "vSoprano" \verseTwoEN
    \new Lyrics \lyricsto "vSoprano" \verseThreeEN

    \new Staff = "lower" <<
      \clef "bass"
      \new Voice = "vTenor" { 
        \override Ambitus #'X-offset = #3.0
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
    \context { \Lyrics
      \override LyricExtender #'minimum-length = #0
      \override LyricExtender #'after-line-breaking = %
         #(conditional-kill-lyric-extender-callback 0.8)
    }
  }
}
