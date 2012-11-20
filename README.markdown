## TODO

God rest you
* add piano and f to 3 (From god our heav'nly) c.q. 4 (fear
not, then said).

Rejoice and be merry
* single 'who brought us salvation' line

God rest you
* triool

Stille Nacht
* weghalen tweede p en pp

Coventry Carol
* more linebreaks
  * 'by by lul - \r'
  * 'may we do \r'
  * 'ling for \r'

* All songs:

   \context {
     \Lyrics
     % relative change to font: one size smaller
     \override LyricText #'font-size = #-1
   }


## Creating a new song directory

1. Make a new directory with the title of the song. No spaces.
2. Copy all files in the templates/ folder to the new folder.
3. Open the newly-copied Rakefile and change `SONG_ARR` to the desired
   `song-arranger` identifier.
4. Run `rake init` to replace XXX with the appropriate value in all
   files and filenames.


## Compilation

De noten en de text, en alléén de noten en de tekst, zitten in
`song-arranger-source.ly`. Daarnaast is er een lilypond-bestand dat het
noten en text in twee of vier notenbalken arrangeert: dat heeft een naam
als `song-arranger-twostave.ly`, of `-fourstave.ly`. Je maakt de PDF als
volgt:

    lilypond <song>-<arranger>-<four>stave.ly

Of, als je Rake gebruikt, staan je de volgende taken ter beschikking.
Deze dien je allemaal uit te voeren vanuit de lieddirectory.

* `cd songs-lily/<song directory>`
* `rake pdf` -- Maak de PDF
* `rake midi` -- Maak de midi-bestandjes
* `rake all` -- Maak allebei

Als je alle liedjes wilt combineren, ga dan buiten de liedmap staan, en
doe als volgt:

* `rake midis`
* `rake pdfs`
* `rake docs`     -- maak de documentatie
* `rake all`
* `rake website`

## Lilypond tricks

To format lyrics text:

    bold = { % bold
      \override Lyrics.LyricText #'font-series = #'bold
    }

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

To change a syllable length:

    \once \override LyricText #'X-extent = #'(0 . 1)

When one syllable is sung on two notes with `_`, the syllable text will
push the second note to the right instead of being placed evenly under
the two notes. So we force Lilypond to pretend the syllable is really
short, instead. Unfortunately, this means that the extender line will
start too early, but such is life.



To re-align a text mark:

    fis8^._\markup{\halign #2 }

To add a custom-length horizontal line at the end of a syllable

    \markup{ Fa \draw-line #'(3 . 0) }

To briefly change the associated voice:

     \new Lyrics \lyricsto "one" {
       No more let
       % must be set one syllable early
       % We are changing 'and'.
       \set associatedVoice = "two" sins 
       \set associatedVoice = "one" and
       sor -- rows grow

To raise or lower lyrics:

    dropLyrics =
    {
        \override LyricText #'extra-offset = #'(0 . -2)
        \override LyricHyphen #'extra-offset = #'(0 . -2)
        \override LyricExtender #'extra-offset = #'(0 . -2)
    }

    raiseLyrics =
    {
        \revert LyricText #'extra-offset
        \revert LyricHyphen #'extra-offset
        \revert LyricExtender #'extra-offset
    }

To print a smaller note:

  \once \override NoteHead #'font-size = #-4
  \once \override Stem #'font-size = #-4
  \once \override Stem #'length = #5

To kill extenders (`__` and `--`) that are too short to be useful:

    % This useful function kills extenders that are too short to be useful
    % Combine this with \override LyricExtender #'minimum-length = #0 for
    % beautiful results: an extender if there is space, no extender if there
    % is not.
    #(define (conditional-kill-lyric-extender-callback . args)
       (lambda (grob)
        (let* ((minimum-length
                (if (null? args)
                 (ly:grob-property grob 'minimum-length 0)
                 (car args)))
               (X-extent (ly:stencil-extent (ly:grob-property grob 'stencil empty-stencil) X))
               (length (- (cdr X-extent) (car X-extent))))
         (if (> minimum-length length)
          (ly:grob-suicide! grob)))))
