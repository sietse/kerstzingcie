
\version "2.12.3"
% automatically converted from ich_steh_an-bach.xml

\header {
    copyright = "CM Kerstzingcie 2006"
    encodingdate = "2011-09-30"
    tagline = "Finale 2011 for Macintosh"
    title = Choral
    composer = Bach
    encodingsoftware = "Finale 2011 for Macintosh"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.27\cm
    botton-margin = 0.0\cm
    left-margin = 2.53\cm
    right-margin = 1.27\cm
    between-system-space = 2.57\cm
    page-top-space = 1.66\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key g \major \time 4/4 \partial 4 \repeat volta 2 {
        g4 | % 1
        g8 ( [ a8 ) ] b4 a4 g4 | % 2
        a4 \breathe a4 b4 g8 ( [ a8 ) ] | % 3
        b4 c4 d4 c8 ( [ b8 ) ] | % 4
        a8 ( [ g8 ] a4 ) g4 }
    s4 | % 5
    b4 s2. | % 6
    b4 a4 g4 fis4 | % 7
    g8 ( [ a8 ) ] b4 a4 a4 \breathe | % 8
    g4 fis4 g4 d4 | % 9
    g4 a4 b4 \breathe g8 ( [ a8 ) ] | \barNumberCheck #10
    b4 c4 d4 c8 ( [ b8 ) ] | % 11
    a8 ( [ g8 ] a4 ) g4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { Ich "steh " __ an dei -- ner
    Krip pen hier, "o " __ Je -- su -- lein, "mein " __ Le -- ben Nimm
    hin! Es ist mein "Geist " __ und Sinn, Herz, Seel und Mut, nimm al
    -- les hin, "und " __ lass dirs wohl -- ge -- fal -- len }
PartPOneVoiceOneLyricsTwo =  \lyricmode { Ich kom -- me, bring und schen
    -- ke dir, "was " __ du mir hast ge -- ge -- ben \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 }
PartPOneVoiceTwo =  \relative d' {
    \clef "treble" \key g \major \time 4/4 \partial 4 \repeat volta 2 {
        d4 | % 1
        e8 ( [ fis8 ) ] g4 g8 ( [ fis8 ) ] g4 | % 2
        g4 fis4 g4 e8 ( [ fis8 ) ] | % 3
        g8 b4 a16 ( [ g16 ) ] fis4 g4 | % 4
        g4 ( fis4 ) d4 }
    s4 | % 5
    g4 s2. | % 6
    g4. fis8 fis8 ( [ e8 ) e8 ( dis8 ) ] | % 7
    e4 d4 d4 d4 | % 8
    d8 ( [ c8 ) ] d4 d8 ( [ c8 ) ] b4 | % 9
    b4 e4 dis4 b4 | \barNumberCheck #10
    e4 e4 d8 ( [ e16 fis16 ) ] g4 | % 11
    g4 ( fis4 ) d4 \bar "|."
    }

PartPTwoVoiceOne =  \relative b {
    \clef "bass" \key g \major \time 4/4 \partial 4 \repeat volta 2 {
        b4 | % 1
        b4 e4 e8 ( [ d8 ) ] d4 | % 2
        e8 ( [ c8 ) ] a8 ( [ d8 ) ] d4 \breathe e4 | % 3
        d4 g,8 ( [ a8 ) ] b8 ( [ c8 ) ] d4 | % 4
        d4 ( c8 [ b8 ) ] b4 }
    s4 | % 5
    d4 s2. | % 6
    d4 d8 ( [ c8 ) ] b8 ( [ c8 ) ] fis,8 ( [ b8 ) ] | % 7
    b8 ( [ a8 ) ] a8 ( [ g8 ) ] fis4 fis4 | % 8
    g8 ( ~ [ a8 ) ] b8 ( ~ [ c8 ) ] b8 ( ~ [ a8 ) ] g4 | % 9
    g4 fis8 ( [ e8 ) ] fis4 \breathe e8 ( [ fis8 ) ] | \barNumberCheck
    #10
    g4. a8 b8 ( [ c8 ) ] d4 | % 11
    d4 ( c8 [ b8 ) ] b4 \bar "|."
    }

PartPTwoVoiceTwo =  \relative g {
    \clef "bass" \key g \major \time 4/4 \partial 4 \repeat volta 2 {
        g8 ( [ fis8 ) ] | % 1
        e4. d8 c4. b8 | % 2
        c8 ( [ a8 ) ] d4 g,4 c4 | % 3
        g'8 ( [ fis8 ) ] e4 b'8 ( [ a8 ) ] g4 | % 4
        d'4 ( d,4 ) g4 }
    s4 | % 5
    g8 ( [ a8 ) ] s2. | % 6
    b8 ( [ c8 ) ] d4 g,8 ( [ a8 ) ] b4 | % 7
    e,8 ( [ fis8 ) ] g4 d4 d'8 ( \breathe [ c8 ) ] | % 8
    b4. a8 g4. fis8 | % 9
    e8 ( [ d8 ) ] c4 b4 e4 | \barNumberCheck #10
    e8 ( [ d8 ) ] c4 b8 ( [ a8 ) ] g4 | % 11
    d'2 g,4 \bar "|."
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

