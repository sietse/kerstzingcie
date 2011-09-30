
\version "2.12.3"
% automatically converted from once_in_royal-mann.xml

\header {
    encodingsoftware = "Finale 2011 for Macintosh"
    tagline = "Finale 2011 for Macintosh"
    copyright = "CM kerstzingcie 2006"
    encodingdate = "2011-09-30"
    }

#(set-global-staff-size 24.6921551575)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 1.28\cm
    botton-margin = 1.28\cm
    left-margin = 2.54\cm
    right-margin = 1.28\cm
    between-system-space = 2.63\cm
    page-top-space = 1.52\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d' {
    \clef "treble" \key g \major \time 4/4 \partial 2 \repeat volta 2 {
        \tempo 4=63 d4 fis4 | % 1
        g4. g8 g8 ~ [ fis8 ] g8 ~ [ a8 ] | % 2
        a4 g4 g4 b4 | % 3
        d4. b8 b8 ~ [ a8 ] g8 ~ [ fis8 ] | % 4
        g2 }
    s2 | % 5
    e'4 e4 s2 | % 6
    d4. g,8 c4 c4 | % 7
    b4 ~ b4 e4 e4 | % 8
    d4. b8 b8 ~ [ a8 ] g8 ~ [ fis8 ] | % 9
    g4 ~ g4 \bar "|."
    }

PartPOneVoiceOneLyricsTwo =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 Je -- sus Christ her lit -- }
PartPOneVoiceTwo =  \relative d' {
    \clef "treble" \key g \major \time 4/4 \partial 2 \repeat volta 2 {
        \tempo 4=63 d4 fis4 | % 1
        d4 d4 cis4 cis4 | % 2
        d8 [ c8 ] b4 d4 g4 | % 3
        d4 d4 e4 d4 | % 4
        d2 }
    s2 | % 5
    e8 ~ [ fis8 ] g8 ~ [ a8 ] s2 | % 6
    d,4 d4 e4 fis4 | % 7
    g4 ~ fis4 e8 ~ [ fis8 ] g8 ~ [ a8 ] | % 8
    d,8 ( [ fis8 ] g8 ) [ g8 ] e4 d4 | % 9
    d4 ~ d4 \bar "|."
    }

PartPOneVoiceTwoLyricsOne =  \lyricmode { "1.Once" in roy -- al Da --
    "vid's" ci -- ty Stood a low -- ly cat -- tle shed, \skip4 \skip4
    \skip4 \skip4 }
PartPOneVoiceTwoLyricsTwo =  \lyricmode { Where a mo -- ther laid her ba
    -- by In a man -- ger for his bed: \skip4 \skip4 \skip4 \skip4 }
PartPTwoVoiceOne =  \relative b {
    \clef "bass" \key g \major \time 4/4 \partial 2 \repeat volta 2 {
        b4 c4 | % 1
        d4 b4 a4 g4 | % 2
        fis4 g4 b4 d4 | % 3
        a4 b8 ~ [ d8 ] d8 ~ [ c8 ] b8 ~ [ a8 ] | % 4
        b2 }
    s2 | % 5
    g4 c4 s2 | % 6
    b4 b4 c4 d4 | % 7
    d4 ~ d4 c4 c4 | % 8
    b8 ( [ c8 d8 ) d8 ] d8 ~ [ c8 b8 ~ a8 ] | % 9
    <g b>4 ~ ~ <g b>4 \bar "|."
    }

PartPTwoVoiceTwo =  \relative b {
    \clef "bass" \key g \major \time 4/4 \partial 2 \repeat volta 2 {
        b4 a4 | % 1
        b4 g4 e4 a,4 | % 2
        d4 g,4 b'4 g4 | % 3
        fis4 g4 c,4 d4 | % 4
        g2 }
    s2 | % 5
    c,8 ~ [ d8 ] e8 ~ [ fis8 ] s2 | % 6
    g4 b4 a4 d,4 | % 7
    g4 ~ g4 c,8 ~ [ d8 ] e8 ~ [ fis8 ] | % 8
    g8 ( [ a8 b8 ) g8 ] c,4 d4 | % 9
    g,4 ~ g4 \bar "|."
    }


% The score definition
\new StaffGroup \with { \override SpanBar #'transparent = ##t } <<
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Sopraan"} \line {"Alt"} } }
        \set Staff.shortInstrumentName = \markup { \column { \line {"S"} \line {"A"} } }
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
            \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
            \new Lyrics \lyricsto "PartPOneVoiceTwo" \PartPOneVoiceTwoLyricsOne
            \new Lyrics \lyricsto "PartPOneVoiceTwo" \PartPOneVoiceTwoLyricsTwo
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

