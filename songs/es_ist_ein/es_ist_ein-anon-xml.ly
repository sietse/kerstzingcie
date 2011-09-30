
\version "2.12.3"
% automatically converted from er_is_een-anon.xml

\header {
    copyright = "Kerstzingcie 2006"
    encodingdate = "2011-09-30"
    tagline = "Finale 2011 for Macintosh"
    title = "Er is een roos ontloken"
    composer = "Traditioneel kerstlied"
    encodingsoftware = "Finale 2011 for Macintosh"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.27\cm
    botton-margin = 1.27\cm
    left-margin = 2.53\cm
    right-margin = 1.27\cm
    between-system-space = 2.19\cm
    page-top-space = 1.27\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \repeat volta 2 {
        \clef "treble" \key f \major \time 4/4 \partial 4 <f c'>4 | % 1
        <f c'>4 <f c'>4 <f d'>4 <f c'>4 | % 2
        <g c>2 <f a>2 | % 3
        <f bes>2 <f a>4 <d g>4 ~ | % 4
        g4 f2 e4 | % 5
        <c f>2 r4 <f c'>4 | % 6
        <f c'>4 <f c'>4 <f d'>4 <f c'>4 | % 7
        <g c>2 <f a>2 | % 8
        <f bes>2 <f a>4 <d g>4 ~ | % 9
        g4 f2 e4 | \barNumberCheck #10
        <c f>2 r4 <c a'>4 | % 11
        <c g'>4 <c e>4 f4 d4 | % 12
        <g, c>2 r4 <e' c'>4 | % 13
        <f c'>4 <f c'>4 <f d'>4 <f c'>4 | % 14
        <g c>2 <fis a>2 | % 15
        <f bes>2 <f a>4 <d g>4 ~ | % 16
        g4 f2 e4 | % 17
        <c f>2 r4 }
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Er is een roos ont -- lo --
    ken uit bar -- re win -- ter -- grond, zo -- als er was ge -- spro
    -- ken door der pro -- fe -- ten -- mond. En Da -- vids oud ge --
    slacht is weer op -- nieuw gaan bloe -- ien in "'t mid" -- den van
    de nacht. }
PartPOneVoiceOneLyricsTwo =  \lyricmode { Die roos van ons ver -- lan --
    gen, dat uit -- ver -- ko -- ren zaad, is door een maagd ont -- van
    -- gen uit Gods ver -- bor -- gen raad. Ma -- ri -- a was be --
    reid, toen Ga -- bri -- "ël" haar groet -- te in "'t mid" -- den van
    de tijd. }
PartPOneVoiceOneLyricsThree =  \lyricmode { Die bloem van Gods be -- ha
    -- gen heeft, naar Je -- sa -- ja sprak, de win -- ter -- kou ver --
    dra -- gen als al -- ler -- dor -- ste tak. O roos als bloed zo
    rood, God komt zijn volk be -- zoe -- ken in "'t mid" -- den van de
    dood. }
PartPOneVoiceTwo =  \relative c' {
    \repeat volta 2 {
        \clef "treble" \key f \major \time 4/4 \partial 4 s4*13 | % 4
        c2 bes2 s1*4 | % 9
        c2 bes2 s1. c4 ~ c8 [ b8 ] s1*4 | % 16
        c2 bes2 s2. }
    }

PartPTwoVoiceOne =  \relative f {
    \repeat volta 2 {
        \clef "bass" \key f \major \time 4/4 \partial 4 <f a>4 | % 1
        <f a>4 <a c>4 bes4 <a c>4 | % 2
        <e c'>2 <d c'>2 | % 3
        <g, d''>2 <a c'>4 <bes bes'>4 | % 4
        <c a'>2 <c g'>2 | % 5
        <f a>2 r4 <f a>4 | % 6
        a4 <a c>4 bes4 <a c>4 | % 7
        <e c'>2 <d c'>2 | % 8
        <g, d''>2 <a c'>4 <bes bes'>4 | % 9
        <c a'>2 <c g'>2 | \barNumberCheck #10
        <f a>2 r4 f4 | % 11
        <e g>4 <a, g'>4 <d a'>4 <g, f'>4 | % 12
        <c e>2 r4 <c bes'>4 | % 13
        <f a>4 <a c>4 bes4 <a c>4 | % 14
        <e c'>2 <d c'>2 | % 15
        <g, d''>2 <a c'>4 <bes bes'>4 | % 16
        <c a'>2 <c g'>2 | % 17
        <f a>2 r4 }
    }


% The score definition
\new StaffGroup \with { \override SpanBar #'transparent = ##t } <<
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Sopraan"} \line {"Alt"} } }
        \set Staff.shortInstrumentName = \markup { \column { \line {"S"} \line {"A"} } }
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsThree
            \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Tenor"} \line {"Bas"} } }
        \set Staff.shortInstrumentName = \markup { \column { \line {"T"} \line {"B"} } }
        \context Staff << 
            \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
            >>
        >>
    
    >>

