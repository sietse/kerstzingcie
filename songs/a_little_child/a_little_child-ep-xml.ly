
\version "2.12.3"
% automatically converted from a_little_child-ep.xml

\header {
    encodingsoftware = "Finale 2011 for Macintosh"
    tagline = "Finale 2011 for Macintosh"
    encodingdate = "2011-09-30"
    }

#(set-global-staff-size 17.0636867717)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.95\cm
    top-margin = 1.27\cm
    botton-margin = 1.27\cm
    left-margin = 1.9\cm
    right-margin = 1.27\cm
    between-system-space = 2.59\cm
    page-top-space = 2.1\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key f \major \time 3/4 \partial 4 a4 \f | % 1
    \slurDashed a4 ( \slurSolid g4 ) f4 | % 2
    c'2 a4 | % 3
    \slurDashed f4 ( \slurSolid g4 ) a4 | % 4
    f2. | % 5
    <c c'>2. \mp | % 6
    <d a'>2. | % 7
    <c c'>2. \pp | % 8
    <d a'>2. | % 9
    f4 g4 a4 | \barNumberCheck #10
    <f c'>4 <g bes>4 <f a>4 | % 11
    <d f>2 <c e>4 | % 12
    <c f>2 c'4 | % 13
    c2 bes4 | % 14
    a2 <f d'>4 | % 15
    \slurDashed c'4 ( \slurSolid bes4 ) a4 | % 16
    g2 <e c'>4 | % 17
    g4 ( a4 ) bes4 | % 18
    <f c'>2 <d f>4 | % 19
    <c f>2 <c e>4 | \barNumberCheck #20
    <c f>2 <f bes>4 | % 21
    \slurDashed bes4 ( \slurSolid a4 ) g4 | % 22
    \slurDashed a4 ( \slurSolid bes4 ) c4 | % 23
    a2 g4 | % 24
    f2 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "1.A" lit -- tle child there
    "is " __ y -- bore, E -- ia, E -- ia, su -- san -- ni, su -- san --
    ni, su -- san -- ni. Y -- sprung -- en out of Jes -- "se's" more, Al
    -- le -- lu -- ya, Al -- le -- lu -- ya. To "save " __ us "all " __
    that were fore -- lore. }
PartPOneVoiceOneLyricsTwo =  \lyricmode { "2.Je" "sus " __ that is so
    "full " __ of might, E -- ia, E -- ia, su -- san -- ni, su -- san --
    ni, su -- san -- ni. Y -- bore he was a -- "bout " __ mid --
    "night;" Al -- le -- lu -- ya, Al -- le -- lu -- ya. The an -- gels
    "sung " __ with all their might. }
PartPOneVoiceTwo =  \relative g' {
    \clef "treble" \key f \major \time 3/4 \partial 4 s4*13 \f s1. \mp
    s1*6 \pp | % 15
    g2 fis4 s2. | % 17
    e2 f4 s4*9 | % 21
    f2 e4 | % 22
    f2 f4 | % 23
    f2 e4 s2 \bar "|."
    }

PartPTwoVoiceOne =  \relative a {
    \clef "bass" \key f \major \time 3/4 \partial 4 a4 | % 1
    \slurDashed a4 ( \slurSolid g4 ) f4 | % 2
    c'2 a4 | % 3
    \slurDashed f4 ( \slurSolid g4 ) a4 | % 4
    f2. | % 5
    <a, e'>2. | % 6
    <d f>2. | % 7
    <a e'>2. | % 8
    <d f>2. | % 9
    | % 9
    f4 \< g4 a4 | \barNumberCheck #10
    | \barNumberCheck #10
    <f a>4 \! \< <g bes>4 <a c>4 | % 11
    | % 11
    bes2 \! \> g4 \! | % 12
    <f a>2 c'4 \mf | % 13
    c2 bes4 | % 14
    a2 <d, a'>4 | % 15
    <es g>2 <d a'>4 | % 16
    <g b>2 <c, c'>4 | % 17
    <c c'>2 <bes d'>4 | % 18
    <a c'>2 <bes bes'>4 | % 19
    c2 c4 | \barNumberCheck #20
    <f a>2 <bes, d'>4 | % 21
    <bes d'>2 <c c'>4 | % 22
    <f c'>2 <a, c'>4 | % 23
    <c c'>2 <c bes'>4 | % 24
    <f, c' a'>2 \bar "|."
    }

PartPTwoVoiceTwo =  \relative g {
    \clef "bass" \key f \major \time 3/4 \partial 4 s4*25 | % 9
    s2. \< | \barNumberCheck #10
    s2. \! \< | % 11
    s2 \! \> s2. \! s4*19 \mf | % 19
    g4 ( a4 ) bes4 s2*7 \bar "|."
    }


% The score definition
\new StaffGroup \with { \override SpanBar #'transparent = ##t } <<
    \new Staff <<
        \set Staff.instrumentName = "S A"
        \set Staff.shortInstrumentName = "S A"
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
            \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "T B"
        \set Staff.shortInstrumentName = "T B"
        \context Staff << 
            \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }
            \context Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }
            >>
        >>
    
    >>

