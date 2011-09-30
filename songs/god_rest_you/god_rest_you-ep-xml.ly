
\version "2.12.3"
% automatically converted from god_rest_you-ep.xml

\header {
    encodingsoftware = "Finale 2011 for Macintosh"
    tagline = "Finale 2011 for Macintosh"
    encodingdate = "2011-09-30"
    }

#(set-global-staff-size 18.7699985433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 1.27\cm
    botton-margin = 1.27\cm
    left-margin = 1.91\cm
    right-margin = 1.27\cm
    between-system-space = 2.08\cm
    page-top-space = 1.3\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e' {
    \clef "treble" \key g \major \time 4/4 \partial 4 e4 -\markup{ \bold
        {Cheerful, flowing} } | % 1
    e4 <g b>4 <fis b>4 <fis a>4 | % 2
    <e g>4 ~ <b fis'>4 <b e>4 <b d>4 | % 3
    <b e>4 <d fis>4 <e g>4 <e a>4 | % 4
    <dis b'>2. e4 | % 5
    e4 <g b>4 <fis b>4 <fis a>4 | % 6
    <e g>4 ~ ~ <d fis>4 <c e>4 <b d>4 | % 7
    <b e>4 <d fis>4 <b g'>4 <e a>4 | % 8
    <dis b'>2 r4 <e b'>4 | % 9
    <e c'>4 <d a'>4 <d b'>4 <e c'>4 | \barNumberCheck #10
    <d d'>4 ~ ~ <g e'>4 <g b>4 <fis a>4 | % 11
    <e g>4 <cis e>4 <d fis>4 <d g>4 | % 12
    <fis a>2 \bar "||"
    s2 | % 13
    g4 ~ a4 s2 | % 14
    <g b>2 <e c'>4 <d b'>4 | % 15
    <g b>4 ~ ~ <fis a>4 <e g>4 <dis fis>4 | % 16
    e2 <b g'>8 [ <b fis'>8 ] <cis e>4 | % 17
    <d a'>2 g4 ~ a4 | % 18
    g2 g4 g4 | % 19
    <g b>4 ~ fis4 e4 dis4 | \barNumberCheck #20
    e2. \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "1.God" rest you mer -- ry,
    gent -- }
PartPOneVoiceTwo =  \relative b' {
    \clef "treble" \key g \major \time 4/4 \partial 4 s4*47 -\markup{
        \bold {Cheerful, flowing} } \bar "||"
    s2*11 | % 18
    b4 ~ c4 d4 e4 | % 19
    b4 ~ a4 g4 fis4 | \barNumberCheck #20
    e2 s4 \bar "|."
    }

PartPTwoVoiceOne =  \relative e {
    \clef "bass" \key g \major \time 4/4 \partial 4 e4 | % 1
    e4 <e e'>4 <b d'>4 <d d'>4 | % 2
    <e b'>4 ~ <b b'>4 <e g>4 <b fis'>4 | % 3
    <e g>4 <d a'>4 <c e>4 <c e>4 | % 4
    <b fis'>2. e4 | % 5
    e4 <e e'>4 <b d'>4 <d d'>4 | % 6
    e4 ~ b4 c4 g'4 | % 7
    <e g>4 <b b'>4 <e g>4 <c e>4 | % 8
    <b fis'>2 r4 <e gis>4 | % 9
    <a, a'>4 <d fis>4 <g, g'>4 <c g'>4 | \barNumberCheck #10
    <b g'>4 ~ ~ <c g'>4 <g d''>4 <d' d'>4 | % 11
    <e b'>4 <e g>4 <d a'>4 <b d'>4 | % 12
    <d d'>2 \bar "||"
    s2 | % 13
    g4 ~ a4 s2 | % 14
    <g b>2 <c, g'>4 g'4 | % 15
    <g d'>4 ~ ~ <a c>4 b4 <b, b'>4 | % 16
    <e g>2 <e g>8 [ <e g>8 ] <e g>4 | % 17
    <d fis>2 g4 ~ a4 | % 18
    <g b>4 ~ ~ <e g>4 <b d'>4 <c c'>4 | % 19
    <g d''>4 ~ ~ <a c'>4 ( <b b'>4 ) <b b'>4 ( | \barNumberCheck #20
    <e g>2. ) \bar "|."
    }

PartPTwoVoiceTwo =  \relative b {
    \clef "bass" \key g \major \time 4/4 \partial 4 s4*21 | % 6
    b2 g4 g4 s2*11 \bar "||"
    s4*33 \bar "|."
    }


% The score definition
\new StaffGroup \with { \override SpanBar #'transparent = ##t } <<
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Soprano"} \line {"Alto"} } }
        \set Staff.shortInstrumentName = \markup { \column { \line {"S"} \line {"A"} } }
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
            \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Tenor"} \line {"Bass"} } }
        \set Staff.shortInstrumentName = \markup { \column { \line {"T"} \line {"B"} } }
        \context Staff << 
            \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }
            \context Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }
            >>
        >>
    
    >>

