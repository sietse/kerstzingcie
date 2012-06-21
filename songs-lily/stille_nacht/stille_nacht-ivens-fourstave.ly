\version "2.12.3"
\include "stille_nacht-ivens-source.ly"

nummer = "18."

\header {
  title = \markup { \nummer "Stille Nacht" }
  composer = "Franz Gruber (1787-1863)"
  arranger = "Arranged by Jo Ivens"
  tagline =  \markup { \center-column {
    "Versie 2011-09-07"
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
  % This bit determines the structure of the layout. A choirstaff
  % containing four staves, in our case, with lyrics in between 1 and 2
  % and between 3 and 4. (Other conceivable option: a choirstaff
  % containing two staves, two voices per stave.
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "vSoprano" { \soprano }
      \new Lyrics \lyricsto "vSoprano" { \verseOne }
      \new Lyrics \lyricsto "vSoprano" { \verseTwo }
      \new Lyrics \lyricsto "vSoprano" { \verseThree }
    >>
    \new Staff { \alto }

    \new Dynamics { \dynamics }

    \new Staff <<
      \new Voice = "vTenor" { \tenor }
      \new Lyrics \lyricsto "vTenor" { \verseOne }
      \new Lyrics \lyricsto "vTenor" { \verseTwo }
      \new Lyrics \lyricsto "vTenor" { \verseThree }
    >>
    \new Staff <<
      \new Voice = "vBass" { \bass }
      \new Lyrics \lyricsto "vBass" { \verseOneBass }
    >>
  >>

  \layout { 
    % Beautiful extender lines
    \context { \Lyrics
      \override LyricExtender #'minimum-length = #0
      \override LyricExtender #'after-line-breaking = %
         #(conditional-kill-lyric-extender-callback 1)
    }
    % modify ChoirStaff context to accept Dynamics context. This lets us
    % print the dynamics in the middle.
    \context {
      \ChoirStaff
      \accepts Dynamics
    }
    % We can haz ambitus to display pitch range?
    % Also? No need to preted a staff is bigger than it is. We want to
    % fit everything on one page, after all.
    \context { \Staff 
      \consists "Ambitus_engraver"
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
    }
    % More height-saving tweaks
    \context { \Lyrics 
      \override VerticalAxisGroup #'Y-extent = #'(-0.1 . 0.1)
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
    % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
  }
}
