
\version "2.12.3"
% automatically converted from entre_le_boef-wakelkamp.xml

\header {
    copyright = "Copyright by Annie Bank, Amsterdam, 1-10-1975"
    encodingdate = "2011-09-30"
    tagline = "Finale 2011 for Macintosh"
    title = "Entre le boeuf et l'âne gris"
    composer = "Bew. Reinier Wakelkamp"
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
PartPOneVoiceOne =  \relative e' {
    \repeat volta 2 {
        \clef "treble" \key g \major \time 4/4 e4 e8 [ fis8 ] s2 | % 2
        g4 g8 ( [ a8 ) ] a4. b8 | % 3
        b2 d2 | % 4
        b2 a8 [ b8 c8 a8 ] | % 5
        b2 b8 [ c8 d8 e8 ] | % 6
        b2 a8 [ g8 a8 b8 ] | % 7
        g2 a8 [ g8 a8 b8 ] | % 8
        c4 a8 [ g8 ] fis4. e8 | % 9
        e2 }
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "1.En" -- tre boeuf "et " --
    "l'â" -- ne gris, -- \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPOneVoiceOneLyricsTwo =  \lyricmode { "2.En" -- tre deux "bras " __
    de Ma -- rie, dort, dort, dort fils, mille vins, mil -- phins, vo --
    tour de Dieu "d'a" -- mour. }
PartPOneVoiceOneLyricsThree =  \lyricmode { "3.En" -- tre ro -- "ses "
    __ et les lis, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPTwoVoiceOne =  \relative e' {
    \repeat volta 2 {
        \clef "treble" \key g \major \time 4/4 e4 d8 [ d8 ] s2 | % 2
        d4 c4 c4 d4 | % 3
        e2 fis2 | % 4
        fis8 ( [ g8 ] e4 ) a8 [ a8 a8 g8 ] | % 5
        fis2 fis8 [ e8 ] e16 ( [ fis16 ) g8 ] | % 6
        fis2 fis8 [ e8 g8 fis8 ] | % 7
        e2 e8 [ e8 e8 a8 ] | % 8
        g4 fis8 [ e8 ] e4 d8 ( [ c8 ) ] | % 9
        b2 }
    }

PartPTwoVoiceOneLyricsOne =  \lyricmode { "1.En" -- tre boeuf et --
    "l'â" -- ne gris, -- \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPTwoVoiceOneLyricsTwo =  \lyricmode { "2.En" -- tre deux bras de Ma
    -- rie, dort, "dort, " __ dort fils, mille "ges " __ vins, mil --
    phins, vo -- tour de Dieu "d'a" -- mour. }
PartPTwoVoiceOneLyricsThree =  \lyricmode { "3.En" -- tre ro -- ses et
    les lis, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPThreeVoiceOne =  \relative b {
    \repeat volta 2 {
        \clef "treble_8" \key g \major \time 4/4 b4 b8 [ b8 ] s2 | % 2
        b4 b4 a4 a4 | % 3
        g2 b8 ( [ c8 b8 a8 ) ] | % 4
        a4 ( g4 ) a8 [ d8 e8 e8 ] | % 5
        e8 ( [ c8 ] d4 ) r2 | % 6
        b8 [ c8 d8 e8 ] b2 | % 7
        b8 [ a8 b8 d8 ] c8 [ b16 b16 ] c8 [ d8 ] | % 8
        e4 d8 [ d8 ] c8 ( [ b8 ) ] a4 | % 9
        g2 }
    }

PartPThreeVoiceOneLyricsOne =  \lyricmode { "1.En" -- tre boeuf et --
    "l'â" -- ne gris, -- \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPThreeVoiceOneLyricsTwo =  \lyricmode { "2.En" -- tre deux bras de
    Ma -- rie, "dort, " __ "dort, " __ dort "fils, " __ mille vins, mil
    -- phins "à" tour de "Dieu " __ "d'a" -- mour. }
PartPThreeVoiceOneLyricsThree =  \lyricmode { "3.En" -- tre ro -- ses et
    les lis, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPFourVoiceOne =  \relative e {
    \repeat volta 2 {
        \clef "bass" \key g \major \time 4/4 e4 e8 [ e8 ] s2 | % 2
        e4 e4 g4 fis4 | % 3
        e2 b4 ( c4 ) | % 4
        d4 ( e8 [ d8 ) ] c8 [ b8 a8 c8 ] | % 5
        b2 d8 [ d8 c8 a8 ] | % 6
        b2 d8 [ e8 c8 d8 ] | % 7
        e2 a8 [ a8 g8 fis8 ] | % 8
        e4 b8 [ c8 ] d4 b4 | % 9
        e2 }
    }

PartPFourVoiceOneLyricsOne =  \lyricmode { "1.En" -- tre boeuf et --
    "l'â" -- ne gris, -- \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }
PartPFourVoiceOneLyricsTwo =  \lyricmode { "2.En" -- tre deux bras de Ma
    -- rie, "dort, " __ "dort, " __ dort fils, mille vins, mil -- phins,
    vo -- tour de Dieu "d'a" -- mour. }
PartPFourVoiceOneLyricsThree =  \lyricmode { "3.En" -- tre ro -- ses et
    les lis, \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 }

% The score definition
\new StaffGroup \with { \override SpanBar #'transparent = ##t } <<
    \new Staff <<
        \set Staff.instrumentName = "Sopraan"
        \set Staff.shortInstrumentName = "S"
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
            \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsThree
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "Alt"
        \set Staff.shortInstrumentName = "A"
        \context Staff << 
            \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
            \new Lyrics \lyricsto "PartPTwoVoiceOne" \PartPTwoVoiceOneLyricsOne
            \new Lyrics \lyricsto "PartPTwoVoiceOne" \PartPTwoVoiceOneLyricsTwo
            \new Lyrics \lyricsto "PartPTwoVoiceOne" \PartPTwoVoiceOneLyricsThree
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "Tenor"
        \set Staff.shortInstrumentName = "T"
        \context Staff << 
            \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
            \new Lyrics \lyricsto "PartPThreeVoiceOne" \PartPThreeVoiceOneLyricsOne
            \new Lyrics \lyricsto "PartPThreeVoiceOne" \PartPThreeVoiceOneLyricsTwo
            \new Lyrics \lyricsto "PartPThreeVoiceOne" \PartPThreeVoiceOneLyricsThree
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "Bas"
        \set Staff.shortInstrumentName = "B"
        \context Staff << 
            \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
            \new Lyrics \lyricsto "PartPFourVoiceOne" \PartPFourVoiceOneLyricsOne
            \new Lyrics \lyricsto "PartPFourVoiceOne" \PartPFourVoiceOneLyricsTwo
            \new Lyrics \lyricsto "PartPFourVoiceOne" \PartPFourVoiceOneLyricsThree
            >>
        >>
    
    >>

