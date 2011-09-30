
\version "2.12.3"
% automatically converted from deck_the_halls-anon1.xml

\header {
    copyright = "CM Kerstzingcie 2006"
    encodingdate = "2011-09-30"
    tagline = "Finale 2011 for Macintosh"
    title = "Deck the Halls"
    composer = "Welsh traditional"
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
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key f \major \time 4/4 | % 1
    \tempo 2=116 <a c>4. <g bes>8 <f a>4 <e g>4 | % 2
    f4 <e g>4 <f a>4 f4 | % 3
    <d g>8 [ <d a'>8 <d bes'>8 <d g>8 ] <f a>4. <d g>8 | % 4
    <c f>4 <c e>4 <c f>2 | % 5
    <f c'>4. <g bes>8 <f a>4 <d g>4 | % 6
    <c f>4 g'4 <f a>4 <c f>4 | % 7
    g'8 [ a8 bes8 g8 ] a4. g8 | % 8
    <c, f>4 <c e>4 <c f>2 | % 9
    <e g>4. <f a>8 <g bes>4 <e g>4 | \barNumberCheck #10
    <f a>4. <f bes>8 <f c'>4 <e g>4 | % 11
    a8 ( [ b8 ) ] c4 d8 ( [ e8 ) ] f4 | % 12
    <g, e'>4 <f d'>4 <e c'>2 | % 13
    <a c>4. <g bes>8 <f a>4 <e g>4 | % 14
    f4 <e g>4 <f a>4 f4 | % 15
    <g bes>8 [ <d' f>8 <bes d>8 <g bes>8 ] a4. g8 | % 16
    <c, f>4 <c e>4 <c f>2 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "1. Deck" the halls with
    boughts of hol -- ly, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 "'t
    Is" the sea -- son to be jo -- ly, \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 Don we now our gay ap -- pa -- rel, \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 Troll the an -- cient Yule --
    tide ca -- rol, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPOneVoiceOneLyricsTwo =  \lyricmode { "2. See" the bla -- zing Yule
    be -- fore us, Fa la, fa la, la, la, Strike the harp and join the
    cho -- rus, Fa la, fa la, la, la, Fol -- low me in mer -- ry mea --
    sure, "Fa " __ la, "la, " __ la, la, la, la, While I tell of Yule --
    tide trea -- sure, Fa la, fa la, la, la. }
PartPOneVoiceOneLyricsThree =  \lyricmode { "3. Fast" a -- way the old
    year pas -- ses, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 Hail the
    new, ye lads and las -- ses, \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 Sing we jo -- yous all to -- ge -- ther, \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 Heed -- less off the wind and wea --
    ther, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPOneVoiceTwo =  \relative d' {
    \clef "treble" \key f \major \time 4/4 | % 1
    \tempo 2=116 s1*6 | % 7
    d8 [ d8 d8 d8 ] f8 ( [ e8 ) d8 ( f8 ) ] s1*3 | % 11
    a4 g4 a4 f4 s1*3 | % 15
    d8 [ d8 d8 d8 ] f8 ( [ e8 ) d8 ( f8 ) ] s1 \bar "|."
    }

PartPTwoVoiceOne =  \relative f {
    \clef "bass" \key f \major \time 4/4 <f c'>4. <f c'>8 <f c'>4 <f
        bes>4 | % 2
    <f a>4 <c c'>4 <f c'>4 <a c>4 | % 3
    bes8 [ <a bes>8 <g bes>8 bes8 ] <a c>4. <bes d>8 | % 4
    c4 <c, c'>4 <f a>2 | % 5
    <d c'>4. <e c'>8 <f c'>4 <g bes>4 | % 6
    a4 <e c'>4 <f c'>4 <a c>4 | % 7
    bes8 [ bes8 bes8 bes8 ] d4. d8 | % 8
    c4 <c, g'>4 <f a>2 | % 9
    <c c'>4. <c c'>8 <c c'>4 <c c'>4 | \barNumberCheck #10
    <f c'>4. <g c>8 <a c>4 c4 | % 11
    f4. e8 d8 ( [ c8 ) b8 ( a8 ) ] | % 12
    <g c>4 <g b>4 <c, c'>2 | % 13
    <f c'>4. <f c'>8 <f c'>4 <f bes>4 | % 14
    <f a>4 <c c'>4 <f c'>4 <a, c'>4 | % 15
    bes'8 [ bes8 bes8 d8 ] c4. d8 | % 16
    <c, g'>4 <c g'>4 <f a>2 \bar "|."
    }

PartPTwoVoiceTwo =  \relative bes {
    \clef "bass" \key f \major \time 4/4 s1*6 | % 7
    bes8 [ a8 g8 bes8 ] d8 ( [ c8 ) ] bes4 s1*3 | % 11
    d,4 e4 f4 d4 s1*3 | % 15
    bes8 [ a8 g8 bes8 ] d8 ( [ c8 ) ] bes4 s1 \bar "|."
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
            \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }
            \context Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }
            >>
        >>
    
    >>

