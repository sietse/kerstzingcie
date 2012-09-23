## This file contains four sections. 
##
## * The first section defines the constants we will be needing. 
## * The second section contains the `midis` task, which creates the
##    midi zipfiles. 
## * The third section contains the `update_line_numbers` task, which
##   ensures that the song numbers in `MASTER-inhoudsopgave.txt` are
##   present in the songs' .ly files. 
## * The last section contains the `pdfs` task, which (1) collects the
##   song pdfs into a zipfile, and (2) concatenates them into a
##   songbook.

## -----------------------------------------------------------------

## ## Section 1: defining some constants.

## We collect the output in a directory called 'output'. Appropriate.

directory "output"
OUTDIR = "output"

## These are the output files we will be creating. If you want a
## different naming scheme (2012 --> 2013, say), all you need to change
## is this block.

OUTFILE = {
    'pdfzip'  => 'kerst-2012-pdfs.zip',
    'pdfbook' => 'kerst-2012-book.pdf',
    'soprano' => 'kerst-2012-midis-soprano.zip',
    'alto'    => 'kerst-2012-midis-alto.zip',
    'tenor'   => 'kerst-2012-midis-tenor.zip',
    'bass'    => 'kerst-2012-midis-bass.zip',
    'tutti'   => 'kerst-2012-midis-tutti.zip'
}

## `VOICES`: for when we want to do something for each voice.

VOICES = ['soprano', 'alto', 'tenor', 'bass', 'tutti']

## The file `MASTER-inhoudsopgave.txt` contains a list of the pdfs we
## we want in our songbook, and how they should be numbered. The
## variable `MASTER` stores this as an array of 
## triples `[song_pdf, number, position]`.

tmp = [] # can't grow a constant incrementally, so we collect in `tmp`.
open('MASTER-inhoudsopgave.txt').each_with_index do |line, i| 
    if not line =~ /^#/
        line = line.gsub!(/\n/, '')
        tmp << [
            line.split(': ')[1], 
            line.split(': ')[0], 
            i
        ]
    end
end
MASTER = tmp

## -----------------------------------------------------------------

## ## Section 2: the `midis` task

desc "update midi files and create a zipfile for every voice"
task :midis => ["output"] do
    ## Run `rake midi` in each directory in songs-lily
    cd('songs-lily')
    FileList['*'].each do |dir|
        cd(dir)
        system("rake midi")
        cd("..")
    end
    cd("..")
    puts("==== Done creating all midi files ====")

    ## Create a midi zipfile for each voice folder in `all-midis`
    # `zip` only updates archives additively, but we sometimes remove
    # songs, so we have to build the zipfile afresh each time.
    puts("==== Creating midi zipfiles ====")
    cd("all-midis")
    VOICES.each do |voice_i|
        zipfile_voice_i = "../#{OUTDIR}/#{OUTFILE[voice_i]}"
        rm_f(zipfile_voice_i)
        # %{...} is a string with any quotes inside it escaped
        system %{
            zip ../#{OUTDIR}/#{OUTFILE[voice_i]} #{voice_i}/*
        }
    end
    puts("==== Done creating midi zipfiles ====")
end

## --------------------------------------------------------------------

## ## Section 3: Update title numbers

desc "update songs' title numbers using MASTER-inhoudsopgave.txt"
task :update_title_numbers => ['MASTER-inhoudsopgave.txt'] do
    puts "==== Updating file numbers ===="
    ## For each song ...
    MASTER.each do |filename, nummer, position| # position not used
        filename = filename.ext('ly')

        ## ... that is a Lilypond song ...
        if (filename =~ /^songs-lily/) != nil

            ## ... iterate until reaching the line defining `number` ...
            lilyfile = open(filename)
            line = lilyfile.readline
            while (line =~ /^ *nummer = "/) == nil
                line = lilyfile.readline
            end

            ## ... see what that title number is ...
            nummer_oud = line.gsub!(
                /^ *nummer = "/, ''
            ).scan(/^[0-9π¾]*\. */)[0]

            ## ... and change that number if needed.
            if not nummer_oud.eql?(nummer) then
                puts "Changing '#{nummer_oud}' to '#{nummer}' " +
                    "in #{filename}"
                system %{
                    sed -i '/nummer = "/s/".*"/"#{nummer}"/' #{filename}
                }
            end
        end
    end
    puts "==== Done updating file numbers ===="
end

## --------------------------------------------------------------------

## ## Section 4: The `pdfs` task

## `SONGPDFS` is an array of the PDF targets --- basically the first
## column of the MASTER array.

SONGPDFS = MASTER.transpose[0]

## The `pdfs` task creates the songbook and the zipfile.
desc "update PDF files and put them in a zipfile"
task :pdfs => [:update_title_numbers, "output"] do
    ## This task first descends into every directory in songs-lily and
    ## invokes `rake pdf`.
    cd('songs-lily')
    FileList['*'].each do |dir|
        cd(dir)
        system("rake pdf")
        cd("..")
    end
    cd("..")
    puts "==== Done updating all PDF files ====" 

    ## Next the task creates a zipfile containing every pdf in
    ## `MASTER-inhoudsopgave.txt`.
    puts "==== Creating #{OUTFILE['pdfzip']} ===="
    # We have to delete the old one first, in case it contains obsolete
    # stuff.
    system %{
        rm #{OUTDIR}/#{OUTFILE['pdfzip']}
    }
    system %{
        zip --junk-paths \
            #{OUTDIR}/#{OUTFILE['pdfzip']} \
            #{SONGPDFS.join(' ')}
    }
    puts "==== Done creating #{OUTFILE['pdfzip']} ===="
end


## --------------------------------------------------------------------

## ## Section 5: miscellanea

file "docs/Rakefile.html" => "Rakefile" do
    system "pycco --force-language=ruby Rakefile"
end

desc "create the documentation"
task :docs => ["docs/Rakefile.html"] do end

desc "rake docs + rake pdfs + rake midis"
task :all => [:docs, :pdfs, :midis] do end
