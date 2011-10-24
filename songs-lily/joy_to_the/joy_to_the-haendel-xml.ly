
\version "2.12.3"
% automatically converted from joy_to_the-haendel.xml

\header {
    copyright = "CM Kerstzingcie 2006"
    encodingdate = "2011-09-30"
    tagline = "Finale 2011 for Macintosh"
    title = "Joy to the World"
    composer = "Händel 1742"
    encodingsoftware = "Finale 2011 for Macintosh"
    }

#(set-global-staff-size 18.8203599213)
\paper {
    paper-width = 21.6\cm
    paper-height = 27.95\cm
    top-margin = 2.0\cm
    botton-margin = 2.0\cm
    left-margin = 1.5\cm
    right-margin = 2.0\cm
    between-system-space = 0.89\cm
    page-top-space = 0.5\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d'' {
    \clef "treble" \key d \major \time 2/4 | % 1
    d4 \f cis8. b16 | % 2
    a4. g8 | % 3
    fis4 e4 | % 4
    d4. a'8 | % 5
    b4. b8 | % 6
    cis4. cis8 | % 7
    d4. d8 | % 8
    d8 ( [ cis8 ) ] b8 ( [ a8 ) ] | % 9
    a8. ( [ g16 fis8 ) ] d'8 | \barNumberCheck #10
    d8 [ cis8 ] b8 ( [ a8 ) ] | % 11
    a8. ( [ g16 fis8 ) ] fis8 \p | % 12
    fis8 fis8 fis8 fis16 ( [ g16 ) ] | % 13
    a4. g16 ( [ fis16 ) ] | % 14
    e8 e8 e8 e16 ( [ fis16 ) ] | % 15
    | % 15
    g4. \< fis16 \! \f ( [ e16 ) ] | % 16
    d8 ( d'4 ) b8 | % 17
    a8. [ g16 fis8 ] g8 | % 18
    fis4 e4 | % 19
    d2 \bar "|."
    }

PartPOneVoiceTwo =  \relative fis' {
    \clef "treble" \key d \major \time 2/4 | % 1
    fis4 \f a8. g16 | % 2
    fis4. e8 | % 3
    d4 cis4 | % 4
    d4. d8 | % 5
    g4. g8 | % 6
    e4. e8 | % 7
    fis4. fis8 | % 8
    fis8 [ a8 ] g8 [ fis8 ] | % 9
    fis8. [ e16 d8 ] fis8 | \barNumberCheck #10
    fis8 ( [ a8 ] g8 [ fis8 ] s4. | % 11
    fis8. \p [ e16 d8 ] d8 | % 12
    d8 d8 d8 d16 [ e16 ] | % 13
    <fis e>4. [ d16 ] | % 14
    cis8 cis8 cis8 cis16 [ d16 ] | % 15
    s16 \< | % 15
    <e d>4. \! \f [ cis16 ] | % 16
    d8 fis4 g8 | % 17
    fis8. [ e16 d8 ] e8 | % 18
    d4 cis4 | % 19
    d2 \bar "|."
    }

PartPOneVoiceTwoLyricsOne =  \lyricmode { Joy to the world! the Lord has
    come: Let earth re -- ceive her "King;" Let ev -- "'ry " __ "heart "
    __ pre -- "pare " __ }
PartPTwoVoiceOne =  \relative d' {
    \clef "bass" \key d \major \time 2/4 | % 1
    d4 \f d8. d16 | % 2
    d4. b8 | % 3
    a4. g8 | % 4
    fis4. d'8 | % 5
    d4. d8 | % 6
    a4. a8 | % 7
    a4. a8 | % 8
    a4 d4 | % 9
    d4. a8 | \barNumberCheck #10
    a4 d4 | % 11
    d4. r8 \p | % 12
    r4 r8 a8 | % 13
    a8 a8 a8 a8 | % 14
    a2 ~ | % 15
    a4. a16 [ g16 ] | % 16
    fis8 ( a4 ) d8 \f | % 17
    d4. b8 | % 18
    a4 a8 [ g8 ] | % 19
    fis2 \bar "|."
    }

PartPTwoVoiceOneLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 And
    "heav'n" and na -- ture sing, \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 }
PartPTwoVoiceTwo =  \relative d {
    \clef "bass" \key d \major \time 2/4 | % 1
    d4 \f d8. d16 | % 2
    d4. g,8 | % 3
    a4 a4 | % 4
    d4. fis8 | % 5
    g4. g8 | % 6
    a4. a8 | % 7
    d,4. d8 | % 8
    d4 d4 | % 9
    d4. d8 | \barNumberCheck #10
    d4 d4 s4. | % 11
    r8 \p | % 12
    r4 d8 | % 13
    <d d>8 d8 d8 | % 14
    a'4. a,8 | % 15
    a8 a8 a8 a8 s4. | % 16
    <d d>4. \f | % 17
    d4. g,8 | % 18
    <a a>4 | % 19
    d2 \bar "|."
    }

PartPTwoVoiceTwoLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 and "heav'n" and na --
    ture sing, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }

% The score definition
\new StaffGroup \with { \override SpanBar #'transparent = ##t } <<
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Sopraan"} \line {"Alt"} } }
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
            \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
            \new Lyrics \lyricsto "PartPOneVoiceTwo" \PartPOneVoiceTwoLyricsOne
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = \markup { \column { \line {"Tenor"} \line {"Bas"} } }
        \context Staff << 
            \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }
            \new Lyrics \lyricsto "PartPTwoVoiceOne" \PartPTwoVoiceOneLyricsOne
            \context Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }
            \new Lyrics \lyricsto "PartPTwoVoiceTwo" \PartPTwoVoiceTwoLyricsOne
            >>
        >>
    
    >>

