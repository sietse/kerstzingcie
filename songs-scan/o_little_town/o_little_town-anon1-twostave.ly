% vim: set fileformat=dos:
\version "2.12.3"

\include "o_little_town-anon1-source.ly"

nummer = "99." % FIXME

\header {
  title = \markup {\nummer "O little town of Bethlehem"}
  composer = \markup { \right-column {
    \line { English traditional melody }
    \line { arranged by }
    \line { R. VAUGHAN WILLIAMS (1872-1958) }
    \line { and (V. 4) THOMAS ARMSTRONG (\italic{b.} 1898) }
  }}
  tagline =  \markup { \center-column {
    "Versie 2012-10-11, Collegium Musicum Kerstzingcie 2011"
    "Descant from the Royal School of Church Music."
    "Arrangement from the English Hymnal, via the Oxford University Press."
  }}
  poet = \markup { \left-column {
    "Words by"
    "PHILLIPS BROOKS"
    "(1835–93)"
  }}
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
  <<
    \new Staff = "descant" {
      \clef "treble"
      \new Voice = "vDescant" {
        \descantskip \descantdescant
      }
    }
    \new Lyrics \lyricsto "vDescant" \verseFour
    \new ChoirStaff <<
      \new Staff = "upper" <<
        \clef "treble"
        \new Voice = "vSoprano" { 
          \override Ambitus #'X-offset = #2.0
          \voiceOne \soprano \sopranodescant
        }
        \new Voice = "vAlto" { \voiceTwo \alto \altodescant }
      >>

      \new Lyrics \lyricsto "vSoprano" { \verseOne \verseFour }
      \new Lyrics \lyricsto "vSoprano" \verseTwo
      \new Lyrics \lyricsto "vSoprano" \verseThree

      \new Staff = "lower" <<
        \clef "bass"
        \new Voice = "vTenor" { 
          \override Ambitus #'X-offset = #2.0
          \voiceOne \tenor \tenordescant
        }
        \new Voice = "vBass" { \voiceTwo \bass \bassdescant }
      >>
    >>
  >>

  \layout { 
    \context { 
      \RemoveEmptyStaffContext 
      % To use the setting globally, uncomment the following
      % line:
      \override VerticalAxisGroup #'remove-first = ##t
    }
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
