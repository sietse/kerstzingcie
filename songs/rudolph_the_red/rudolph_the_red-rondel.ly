
\version "2.12.3"
% automatically converted from rudolph-the-red.xml

\header {
    copyright = "CM Kerstzincie 2006"
    encodingdate = "2011-09-30"
    tagline = "Finale 2011 for Macintosh"
    title = "Rudolph the red-nosed reindeer"
    composer = "Jonny Marks arr. M. Rondel"
    encodingsoftware = "Finale 2011 for Macintosh"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.27\cm
    botton-margin = 1.01\cm
    left-margin = 2.53\cm
    right-margin = 1.27\cm
    between-system-space = 2.19\cm
    page-top-space = 1.27\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 \partial
    4 a8 _\markup{ \italic {dolce} } ^"(alten)" [ b8 ] | % 1
    c8 a4 f8 b8 g4 e8 | % 2
    a8 f4 d8 a'8 g4. | % 3
    c8 a4 f8 b8 g4 e8 | % 4
    a8 f4 d8 a'8 g4. | % 5
    e4 e4 e4 e4 | % 6
    a2. a8 [ b8 ] | % 7
    c4 c4 c8 b4 a8 | % 8
    g2. r4 \bar "||"
    | % 9
    \time 2/2  | % 9
     R1 | \barNumberCheck #10
    b2 \rest ^\markup{ \bold {Presto} } <e, a>4 \mf <c c'>4 | % 11
    | % 11
    g'8 \f [ a8 g8 a8 ] g4 c4 | % 12
    b1 | % 13
    R1*2 | % 15
    <e, g>8 [ <f a>8 <e g>8 <f a>8 ] <dis g>4 <b a'>4 | % 16
    <c e>1 | % 17
    | % 17
    <e g>8 \f [ <d a'>8 r8 <c g'>8 ] <g e'>4 <e' c'>4 | % 18
    <c a'>4 <c g'>2. | % 19
    <e g>8 [ <f a>8 <e g>8 <f a>8 ] <e g>4 <a c>4 | \barNumberCheck #20
    <g b>4 _. gis4 _> f4 \mf _> g4 | % 21
    d'4 cis4 c4 b4 | % 22
    bes4 a4 gis4 g4 | % 23
    g8 [ a8 g8 a8 ] g4 d'4 | % 24
    c1 \bar "||"
    | % 25
    | % 25
    <d, f>4 \mp <d f>4 <f a>4 <d f>4 | % 26
    <c e>4 <b g'>8 [ <c e>8 ] ~ <c e>2 | % 27
    <a d>4 <a f'>4 <b e>4 <b d>8 [ c8 ( ~ ] | % 28
    c1 | % 29
    d4 e4 g4 a4 | \barNumberCheck #30
    b4 b8 [ b8 ~ ] b2 | % 31
    R1*2 | % 33
    <e, g>8 [ <f a>8 r8 <e g>8 ] <c e>4 <e c'>4 | % 34
    <f a>4 <e g>2. | % 35
    <e g>8 [ <f a>8 <e g>8 <f a>8 ] <e g>4 <es c'>4 | % 36
    <d b'>1 | % 37
    R1*2 | % 39
    | % 39
    <d g>4 \f <e a>4 <d g>4 <e a>4 | \barNumberCheck #40
    <d g>2 <g b d>2 | % 41
    <c e g>2. b4 \rest | % 42
    R1 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { You Das -- her and Dan -- cer
    and Pran -- cer and Vi -- xen, Co -- met and Cu -- pid and Don --
    ner and Blit -- zen, but do you re -- call the fa -- mous rein --
    deer of "all?" Rein -- deer! had shi -- ny nose, you say it glows,
    all o -- ther rein -- deer, used call him names. RED NOSE They ne --
    ver let the rein -- deer Ru -- dolph join rein -- deer games. Then
    one fog -- gy Christ -- mas San -- ta came to }
PartPOneVoiceTwo =  \relative c' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 \partial
    4 s4*33 _\markup{ \italic {dolce} } ^"(alten)" \bar "||"
    | % 9
    \time 2/2  | % 9
     s1. ^\markup{ \bold {Presto} } s2 \mf | % 11
    s1*6 \f | % 17
    s2*7 \f s2*9 \mf \bar "||"
    | % 25
    s8*23 \mp c8 ~ | % 28
    c2 cis2 s1*10 | % 39
    s1 \f | \barNumberCheck #40
    d2 g2 | % 41
    c2. s4*5 \bar "|."
    }

PartPTwoVoiceOne =  \relative g {
    \clef "treble_8" \key c \major \numericTimeSignature\time 4/4
    \partial 4 \tempo 4=80 r4 -\markup{ \italic {Rubato} } | % 1
    R1*8 \bar "||"
    | % 9
    \time 2/2  | % 9
    g8 \f [ a8 r8 g8 ] e4 c'4 | \barNumberCheck #10
    a4 g2. | % 11
    R1 | % 12
    | % 12
    b4 \rest \mf g8 [ gis8 ] a8 ( [ gis8 g8 ) ] b8 \rest | % 13
    | % 13
    f8 \f [ g8 r8 f8 ] d4 b'4 | % 14
    a4 g2. | % 15
    g8 [ a8 g8 a8 ] b4 b4 | % 16
    c4 ( g2. ) | % 17
    | % 17
    c4. \mf d8 ~ d4 b4 | % 18
    c4 e2. | % 19
    e8 [ e8 e8 e8 ] e4 es4 | \barNumberCheck #20
    d4 ^. g4 ^> e4 \f ^> g,4 | % 21
    f8 [ g8 r8 f8 ] d4 b'4 | % 22
    a4 g2. | % 23
    g4 g4 a4 b4 | % 24
    c4 g4 c,4 r4 \bar "||"
    | % 25
    | % 25
    a'4 \mf a4 c4 a4 | % 26
    g4 e8 [ g8 ~ ] g2 | % 27
    f4 a4 g4 f8 [ e8 ( ~ ] | % 28
    e4 g2. ) | % 29
    d4 e4 g4 a4 | \barNumberCheck #30
    b4 b8 [ b8 ~ ] b2 | % 31
    c4 c4 b4 a4 | % 32
    g4 f8 [ d8 ~ ] d2 | % 33
    g8 [ a8 r8 g8 ] e4 c'4 | % 34
    a4 g2. | % 35
    g8 [ a8 g8 a8 ] g4 c4 | % 36
    b1 | % 37
    R1*2 | % 39
    | % 39
    d4 \f c4 b4 a4 | \barNumberCheck #40
    g2 d'2 | % 41
    e2. r4 | % 42
    R1 \bar "|."
    }

PartPTwoVoiceOneLyricsOne =  \lyricmode { Ru -- red -- nosed rein --
    deer, Shi -- "nose " __ And e -- ver saw it, you say it "glows, " __
    all o -- ther rein -- deer, used call him names. RED NOSE And they
    let poor Ru -- dolph join in a -- ny rein -- deer games. Then one
    fog -- gy Christ -- mas San -- ta came to "\"Ru" -- dolph with your
    nose so "won't" you guide my sleigh to -- Then rein -- deer loved
    him, as out with glee: "you'll" go down in his -- to -- "ry!\"" }
PartPThreeVoiceOne =  \relative g {
    \clef "bass" \key c \major \numericTimeSignature\time 4/4 \partial 4
    \tempo 4=80 r4 -\markup{ \italic {Rubato} } | % 1
    R1*8 \bar "||"
    | % 9
    \time 2/2  | % 9
    g8 \f [ a8 r8 g8 ] e4 c'4 | \barNumberCheck #10
    a4 g2. | % 11
    R1 | % 12
    s4 \mf g8 [ gis8 ] a8 ( [ gis8 g8 ) ] s8 | % 13
    | % 13
    f8 \f [ g8 r8 f8 ] d4 b'4 | % 14
    a4 g2. | % 15
    g8 [ a8 g8 a8 ] g4 g4 | % 16
    c4 ( b4 a4 g4 ) | % 17
    | % 17
    c2 \mf g4 g4 | % 18
    c4. g8 ~ g4 b4 | % 19
    c2 g4 fis4 | \barNumberCheck #20
    g4 r4 r4 \f g4 | % 21
    f8 [ g8 r8 f8 ] d4 b'4 | % 22
    f4 f2. | % 23
    g4 g4 a4 b4 | % 24
    c4 g4 c,4 r4 \bar "||"
    | % 25
    | % 25
    c'4 \mp c4 d4 c4 | % 26
    c4 c8 [ c8 ~ ] c2 | % 27
    d4 d4 g,4 g8 [ c8 ( ~ ] | % 28
    c2 cis2 ) | % 29
    d,4 e4 g4 a4 | \barNumberCheck #30
    b4 b8 [ b8 ~ ] b2 | % 31
    c4 c4 b4 a4 | % 32
    g4 f8 [ d8 ~ ] d2 | % 33
    c'4. g8 ~ g4 g4 | % 34
    c4. g8 ~ g4 g4 | % 35
    c4 c4 r4 es4 | % 36
    d4 b4 a4 g4 | % 37
    f8 [ g8 r8 f8 ] d4 b'4 | % 38
    a4 g2. | % 39
    | % 39
    g4 \f a4 g4 a4 | \barNumberCheck #40
    g2 g2 | % 41
    c2. r4 | % 42
    R1 \bar "|."
    }

PartPThreeVoiceOneLyricsOne =  \lyricmode { Ru -- red -- nosed rein --
    deer, Shi -- "nose " __ And e -- ver saw it, you say it "glows, " __
    all o -- ther rein -- "deer, " __ \skip4 used call him names. And
    they let poor Ru -- dolph join in a -- ny rein -- deer games. Then
    one fog -- gy Christ -- mas San -- ta came to "\"Ru" -- dolph with
    your nose so "won't" you guide my sleigh to -- Ru -- "dolph " __ oh
    Ru -- "dolph " __ oh Ru -- dolph Doom doom doom doom doom "\"Ru" --
    red -- nosed rein -- deer, "you'll" go down in his -- to -- "ry!\""
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
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "Tenor"
        \set Staff.shortInstrumentName = "T"
        \context Staff << 
            \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
            \new Lyrics \lyricsto "PartPTwoVoiceOne" \PartPTwoVoiceOneLyricsOne
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "Bas"
        \set Staff.shortInstrumentName = "B"
        \context Staff << 
            \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
            \new Lyrics \lyricsto "PartPThreeVoiceOne" \PartPThreeVoiceOneLyricsOne
            >>
        >>
    
    >>

