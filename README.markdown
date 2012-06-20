## Creating a new song directory

1. Maak een map aan met de titel van het liedje, zonder spaties erin.
2. Kopiëer alle bestanden in de `templates/` map naar de nieuwe map.
3. Verander in de Rakefile `SONG_ARR` in het gewenste lied-arrangement
   voorvoegsel.
4. Run `rake init`.


## Compilation:

De noten en de text, en alléén de noten en de tekst, zitten in
`song-arranger-source.ly`. Daarnaast is er een lilypond-bestand dat het
lied in twee of vier notenbalken arrangeert: dat heeft een naam als
`song-arranger-twostave.ly`, of `-fourstave.ly`. Je maakt de PDF als
volgt:

    lilypond song-arranger-fourstave.ly

De midi-bestanden

## Automatic compilation using Rakefile

## Lilypond tricks

To italicize text: 

    italic = { % italic
      \override Lyrics.LyricText #'font-shape = #'italic
    }

    normal = { % text face
      \revert Lyrics.LyricText #'font-shape
    }

    VerseOne = \lyrics {
      E -- | ter -- nal \italic Fa -- ther, | \normal strong to save,
    }


To add dynamics marks to a syllable or stanza number:

    \markup{\smaller \dynamic pp Lul} -- ly, lul --la


To set a stanza number

    \set stanza = "1. "


To re-align a syllable:
  
    Stil -- le 
      % 'left edge under note'
      \once \override LyricText #'self-alignment-X = #-1
      Nacht,
    Hei -- li -- ge


To add a custom-length horizontal line at the end of a syllable

    \draw-line (3 . 0)


To briefly change the associated voice:

     \new Lyrics \lyricsto "one" {
       No more let
       % must be set one syllable early
       % We are changing 'and'.
       \set associatedVoice = "two" sins 
       \set associatedVoice = "one" and
       sor -- rows grow
