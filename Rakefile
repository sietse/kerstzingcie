# ## Constants and methods

# (1) Create a method to get the `'path/song-arranger'` root from a derived
# filename. From this you can make `'path/song-arranger-source.ly'`,
# `'path/song-arranger-midi-tenor.midi'`, etc.

class String
    def lroot
        path, filename = self.scan(/(.*\/)(.*)/)[0]
        if filename.split('-').length != 3
            puts "*** Error in '" + filename + "'" +
                "\n*** Filename should be of the form" +
                " 'song-arranger-layout.pdf'"
        end
        path + filename.split('-')[0,2].join('-')
    end
end

# (2) The file `MASTER-inhoudsopgave.txt` contains the songs and their index
# numbers. The variable `MASTER` stores this as an array of triples
# `[song_pdf, number, position]`.

tmp = []
open('MASTER-inhoudsopgave.txt').each_with_index do |line, i| 
    if not line =~ /^#/
        line = line.gsub!(/\n/, '')
        tmp << [line.split(': ')[1], line.split(': ')[0], i]
    end
end
MASTER = tmp

# (3) The zips are put in 'kerstsite/muziek'. Better create that
# directory.

directory 'kerstsite/muziek'

# ---------------------------------------------------------------------

# ## Making the PDFS

# 1. Transfer the correct title numbers from `MASTER` to the
#    `layout.ly` files.
# 2. The PDFs in songs-scan need no rule; the PDFs in `songs-lily` do.
# 3. Concatenate the PDFs with pdftk to make a songbook file.
# 4. Zip 'em up.

# `SONGPDFS` is an array of the PDF targets --- basically the first
# column of the MASTER array.

SONGPDFS = MASTER.transpose[0]

# ### 1. Insert song numbers
# 
# Update the title of each song so that its song number matches the song
# number specified in `MASTER-inhoudsopgave.txt`. This task is *always*
# invoked --- one could also simply not wrap it in a task, but that
# somehow feels dirty.

task :update_title_numbers => ['MASTER-inhoudsopgave.txt'] do
    puts "---- Updating file numbers ----"
    # For each song ...
    MASTER.each do |filename, nummer, position| # position not used

        # ... that is a Lilypond song ...
        filename = filename.ext('ly')
        if (filename =~ /^songs-lily/) != nil

            # ... see how the title is numbered ...
            lilyfile = open(filename)
            line = lilyfile.readline
            while (line =~ /nummer = "/) == nil
                line = lilyfile.readline
            end
            nummer_oud = line.gsub!(
                /^ *nummer = "/, ''
            ).scan(/^[0-9π¾]*\./)[0]
            # ... and change that number if needed.
            if nummer_oud.eql?(nummer)
            else
                puts "Changing '#{nummer_oud}' to '#{nummer}' " +
                    "in #{filename}"
                system %{
                    sed -i '/nummer = "/s/".*"/"#{nummer}"/' #{filename}
                }
            end
        end
    end
    puts "---- Done updating file numbers ----"
end
Rake::Task["update_title_numbers"].invoke()

# ### 2. The PDF rules
# 
# Each `song-arr-layout.pdf` depends on 
# `song-arr-layout.ly` and `song-arr-source.ly`
SONGPDFS.select {|x| x =~ /^songs-lily/ }.each do |song_i|
    file song_i => [
        song_i.ext('ly'),
        song_i.lroot + '-source.ly'
    ] do
        puts "---- Making #{song_i} ----"
        system %{
            lilypond --output #{song_i.gsub(/\.[a-z]*$/, '')} #{song_i.ext('ly')}
        }
        puts "---- Removing #{song_i.ext('ps')} ----"
        system %{
            rm #{song_i.ext('ps')}
        }
    end
end

# ### 3. The songbook PDF
#
file 'kerstsite/muziek/kerst-2011-bladmuziek.pdf' => SONGPDFS + 
    ['kerstsite/muziek'] do
    puts "---- Creating kerst-2011-bladmuziek.pdf ----"
    system %{
        pdftk #{MASTER.sort_by { |x| x[2] }.transpose[0].join(' ')} \
            cat output kerstsite/muziek/kerst-2011-bladmuziek.pdf  &&
        echo '---- Done creating kerst-2011-bladmuziek.pdf ----'   ||
        echo '---- Failed creating kerst-2011-bladmuziek.pdf ----'
    }
end

# ### 4. Zip the PDFs.
# 
# Straightforward. Main note: `zip` only updates archives additively,
# but we sometimes remove songs, so we have to build the zipfile 
# afresh each time.

file 'kerstsite/muziek/kerst-2011-bladmuziek.zip' => SONGPDFS + 
    ['kerstsite/muziek'] +
    ['kerstsite/muziek/kerst-2011-bladmuziek.pdf'] do
    puts "---- Removing old bladmuziek zipfile ----"
    system %{
        rm kerstsite/muziek/kerst-2011-bladmuziek.zip
    }
    puts "---- Creating bladmuziek zipfile ----"
    system %{
        zip --junk-paths \
            kerstsite/muziek/kerst-2011-bladmuziek.zip #{SONGPDFS.join(' ')} \
            kerstsite/muziek/kerst-2011-bladmuziek.pdf
    }
    puts '---- Done creating bladmuziek zip ----'
end

# ---------------------------------------------------------------------

# ## Making the MIDI files
# 
# 1. Compose `SONGMIDIS`, a list of the MIDI filenames we will be making.
# 2. Tell Rake how to compile each of those MIDIs.
# 3. For each voice, create a zipfile of those midis.


# ### 1. Compose a list of MIDI filenames
# 
# `SONGMIDIS` is a 1D array with five midis for each lilypond song:
# 'path/song-arr-midi-soprano.midi' ... 'path/song-arr-midi-tutti.midi'

VOICES = ['soprano', 'alto', 'tenor', 'bass', 'tutti']
tmp = []
SONGPDFS.select {|x| x =~ /^songs-lily/ }.each do |song_i|
    VOICES.each do |voice_i| 
        tmp << song_i.lroot + '-midi-' + voice_i + '.midi'
    end
end

SONGMIDIS = tmp


# ### 2. A rule for each MIDI file ### 
# 
# Each `song-arr-midi-voice.midi` depends on `song-arr-midi-voice.ly`
# and `song-arr-source.ly`

SONGPDFS.select { |x| x =~ /^songs-lily/ }.each do |song_i|
    VOICES.each do |voice_i|
        midi_target = song_i.lroot + '-midi-' + voice_i + '.midi'
        file midi_target => [
            song_i.lroot + '-source.ly',
            midi_target.ext('ly')
        ] do
            puts "---- Making #{midi_target} ----"
            system %{
                lilypond --output #{midi_target.gsub(/\.[a-z]*$/, '')} #{midi_target.ext('ly')}
            }
        end
    end
end


# ### 3. Zip up the MIDI files per voice

VOICES.each do |voice_i|
    zipfile_voice_i = "kerstsite/muziek/kerst-2011-midis-#{voice_i}.zip"
    songmidis_of_voice_i = SONGMIDIS.select { |x| x =~ /#{voice_i}/ }

    file zipfile_voice_i => songmidis_of_voice_i +
        ['kerstsite/muziek'] do
        puts "---- Deleting old #{voice_i} midi zipfile ----"
        system %{
            rm #{zipfile_voice_i}
        }
        puts "---- Creating #{voice_i} midi zipfile ----"
        system %{
            zip --junk-paths #{zipfile_voice_i} #{songmidis_of_voice_i.join(' ')}
        }
        puts "---- Done creating #{zipfile_voice_i} ----"
    end
end


# ---------------------------------------------------------------------

# ## Create some user-friendly tasks

# ### PDF tasks
desc "Make all song PDF files"
task :pdfs => SONGPDFS do
    puts "---- Done making all PDF files ----"
end

desc "Make the songbook: a PDF with all songs in order"
task :bladmuziek_pdf => 
    'kerstsite/muziek/kerst-2011-bladmuziek.pdf' do 
end

desc "Zip of all PDFs"
task :bladmuziek_zip => 
    'kerstsite/muziek/kerst-2011-bladmuziek.zip' do 
end

# ### MIDI tasks
desc "Make all MIDI files"
task :midis => SONGMIDIS do
    puts "---- Done making all MIDI files ----"
end

# create :soprano, :alto, :tenor, :bass, and :tutti tasks
VOICES.each do |voice_i|
    zipfile_voice_i = "kerstsite/muziek/kerst-2011-midis-#{voice_i}.zip"
    desc "Make MIDI zipfile for #{voice_i}"
    task voice_i.to_sym => zipfile_voice_i do end
end

desc "Make MIDI zipfile for every voice"
task :midizips => [:soprano, :alto, :tenor, :bass, :tutti] do
    puts "---- Done creating all midi zips ----"
end

desc "Make all everything"
task :all => [:midizips, :bladmuziek_zip] do end


desc "Test task. Currently does nothing."
task :test do
    "for song_i in SONGPDFS.select {|x| x =~ /^songs-lily/ } do
        puts song_i.lroot + '-source.ly'
    end"
end
