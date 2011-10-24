
\version "2.12.3"
% automatically converted from ding_dong_merrily-wood.xml

\header {
    copyright = "CM Kerstzingcie 2006"
    encodingdate = "2011-09-30"
    tagline = "Finale 2011 for Macintosh"
    title = "Ding Dong Merrily on high"
    composer = "arr. Charles Wood"
    encodingsoftware = "Finale 2011 for Macintosh"
    }

#(set-global-staff-size 22.584375)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 1.51\cm
    botton-margin = 1.51\cm
    left-margin = 0.99\cm
    right-margin = 1.51\cm
    between-system-space = 2.16\cm
    page-top-space = 1.33\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative bes' {
    \clef "treble" \key bes \major \numericTimeSignature\time 4/4 bes4
    bes4 c8 [ bes8 ] a8 [ g8 ] | % 2
    f2. f4 | % 3
    g4 bes4 bes4 a4 | % 4
    bes2 bes2 | % 5
    bes4 bes4 c8 [ bes8 ] a8 [ g8 ] | % 6
    f2. f4 | % 7
    g4 bes4 bes4 a4 | % 8
    bes2 bes2 \repeat volta 2 {
        | % 9
        f'4. ( es8 d8 [ es8 f8 d8 ] | \barNumberCheck #10
        es4. d8 c8 [ d8 es8 c8 ] | % 11
        d4. c8 bes8 [ c8 d8 bes8 ] | % 12
        c4. bes8 a8 [ bes8 c8 a8 ] | % 13
        bes4. a8 g8 [ a8 bes8 g8 ] | % 14
        a4. ) g8 f4 f4 | % 15
        g4 bes4 bes4 a4 | % 16
        bes2 bes2 }
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Ding -- dong mer -- ly high,
    in "heav'n" the bells are ring -- ing, Ding -- dong ve -- ly sky is
    rent with an -- gels sing -- ing. Glo -- \skip4 a, Ho -- san -- na
    in ex -- cel -- sis. -- }
PartPOneVoiceTwo =  \relative f' {
    \clef "treble" \key bes \major \numericTimeSignature\time 4/4 f4 f4
    g8 [ g8 ] es8 [ es8 ] | % 2
    c2. f4 | % 3
    f4 es4 c4 f4 | % 4
    f2 f2 | % 5
    f4 f4 g8 [ g8 ] es8 [ es8 ] | % 6
    c2. f4 | % 7
    f4 es4 c4 f4 | % 8
    f2 f2 \repeat volta 2 {
        | % 9
        r4 f2 ( bes4 ~ | \barNumberCheck #10
        bes8 [ a8 g8 f8 ] g8 [ f8 ] es4 ) | % 11
        r4 f8 ( [ es8 ] d4 f4 | % 12
        g8 [ f8 es8 d8 ] es8 [ d8 ] c4 ) | % 13
        r4 d8 ( [ c8 ] bes4 d4 | % 14
        c4 ) bes4 c4 d4 | % 15
        f4 es4 c4 f4 | % 16
        f2 f2 }
    }

PartPOneVoiceTwoLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 ri \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 }
PartPTwoVoiceOne =  \relative d' {
    \clef "bass" \key bes \major \numericTimeSignature\time 4/4 d4 bes4
    g8 [ g8 ] c8 [ bes8 ] | % 2
    a2. bes4 | % 3
    bes4 bes4 c4 c4 | % 4
    d2 d2 | % 5
    d4 bes4 g8 [ g8 ] c8 [ bes8 ] | % 6
    a2. bes4 | % 7
    bes4 bes4 c4 c4 | % 8
    d2 d2 \repeat volta 2 {
        | % 9
        r4 c4 ( d4 bes4 | \barNumberCheck #10
        c4 bes2 c4 ) | % 11
        r4 a4 ( bes4 g4 | % 12
        a4 g2 a4 ) | % 13
        r4 f4 ( g2 | % 14
        f4 ) bes4 c4 d4 | % 15
        bes4 bes4 c4 c4 | % 16
        d2 d2 }
    }

PartPTwoVoiceTwo =  \relative bes, {
    \clef "bass" \key bes \major \numericTimeSignature\time 4/4 bes4 d4
    es8 [ es8 ] c8 [ c8 ] | % 2
    f2. d4 | % 3
    es4 g4 f4 f4 | % 4
    bes,2 bes2 | % 5
    bes4 d4 es8 [ es8 ] c8 [ c8 ] | % 6
    f2. d4 | % 7
    es4 g4 f4 f4 | % 8
    bes,2 bes2 \repeat volta 2 {
        s4 a'4 ( bes4 d,4 | \barNumberCheck #10
        c4 d4 es8 [ d8 ] c4 ) s4 f4 ( g4 bes,4 | % 12
        a4 bes4 c8 [ bes8 ] a4 ) s4 d4 ( es4 c4 | % 14
        f4 ) g4 a4 bes4 | % 15
        es,4 g4 f4 f4 | % 16
        bes,2 bes2 }
    }


% The score definition
\new StaffGroup \with { \override SpanBar #'transparent = ##t } <<
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Sopraan"} \line {"Alt"} } }
        \set Staff.shortInstrumentName = \markup { \column { \line {"S"} \line {"A"} } }
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
            \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
            \new Lyrics \lyricsto "PartPOneVoiceTwo" \PartPOneVoiceTwoLyricsOne
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

