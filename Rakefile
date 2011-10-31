# == Constants and methods ==

# A method to get the `'path/song-arranger'` root from a derived
# filename.

class String
    # => 'path/song-arranger'
    # Used by the other methods.
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

# MASTER-inhoudsopgave.txt contains the songs and their index numbers.
# MASTER stores this as an array of triples
# [song_pdf, number, position]

tmp = []
open('MASTER-inhoudsopgave.txt').each_with_index do |line, i| 
    if not line =~ /^#/
        line = line.gsub!(/\n/, '')
        tmp << [line.split(': ')[1], line.split(': ')[0], i]
    end
end
MASTER = tmp

# SONGPDFS is an array of the PDF targets --- basically the first column
# of the MASTER array.

SONGPDFS = MASTER.transpose[0]

# SONGMIDIS is a 1D array with five midis for each lilypond song: 
# 'path/song-arr-midi-soprano.midi' ... 'path/song-arr-midi-tutti.midi'

VOICES = ['soprano', 'alto', 'tenor', 'bass', 'tutti']
tmp = []
SONGPDFS.select {|x| x =~ /^songs-lily/ }.each do |song_i|
    VOICES.each do |voice_i| 
        tmp << song_i.lroot + '-midi-' + voice_i + '.midi'
    end
end

SONGMIDIS = tmp

# == Insert song numbers ==

# Make sure the song numbers are Oll Korrekt in each file
# This task is *always* invoked --- it's only put in a task in case I
# ever want to reuse it.

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
            # ... and change that number if needed.
            nummer_oud = line.gsub!(
                /^ *nummer = "/, ''
            ).scan(/^[0-9π¾]*\./)[0]
            if nummer_oud.eql?(nummer)
            else
                puts "Changing '#{nummer_oud}' to '#{nummer}' in #{filename}"
                system %{
                    sed -i '/nummer = "/s/".*"/"#{nummer}"/' \
                        #{filename}
                }
            end
        end
    end
    puts "---- Done updating file numbers ----"
end
Rake::Task["update_title_numbers"].invoke()

# == The direct targets ==

# Each lilypond PDF file depends on its ditto.ly file and its -source.ly
# file.
SONGPDFS.select {|x| x =~ /^songs-lily/ }.each do |song_i|
    file song_i => [
        song_i.ext('ly'),
        song_i.lroot + '-source.ly'
    ] do
        puts "---- Making #{song_i} ----"
        system %{
            lilypond --output #{song_i.gsub(/\.[a-z]*$/, '')} \
            #{song_i.ext('ly')}
        }
        puts "---- Removing #{song_i.ext('ps')} ----"
        system %{
            rm #{song_i.ext('ps')}
        }
    end
end

# Each lilypond midi file depends on its -source file and its -source.ly
# file.
SONGPDFS.select { |x| x =~ /^songs-lily/ }.each do |song_i|
    VOICES.each do |voice_i|
        midi_target = song_i.lroot + '-midi-' + voice_i + '.midi'
        file midi_target => [
            song_i.lroot + '-source.ly',
            midi_target.ext('ly')
        ] do
            puts "---- Making " + midi_target + " ----"
            system %{
                lilypond --output #{midi_target.gsub(/\.[a-z]*$/, '')} \
                #{midi_target.ext('ly')}
            }
        end
    end
end

desc "Check existence of/compile all PDF files"
task :pdfs => SONGPDFS do
    puts "---- Done making all PDF files ----"
end

desc "Make all MIDI files"
task :midis => SONGMIDIS do
    puts "---- Done making all MIDI files ----"
end

# Creating bundles.

file 'output/kerst-2011-bladmuziek.pdf' => SONGPDFS do
    puts "---- Creating kerst-2011-bladmuziek.pdf ----"
    system %{
        pdftk #{MASTER.sort_by { |x| x[2] }.transpose[0].join(' ')} \
            cat output output/kerst-2011-bladmuziek.pdf
    }
    puts 'Done creating kerst-2011-bladmuziek.pdf'
end

desc "PDF met alle liedjes op volgorde"
task :bladmuziek_pdf => 'output/kerst-2011-bladmuziek.pdf' do end

file 'output/kerst-2011-bladmuziek.zip' => SONGPDFS + 
    ['output/kerst-2011-bladmuziek.pdf'] do
    puts "---- Creating kerst-2011-bladmuziek.zip ----"
    system %{
        zip output/kerst-2011-bladmuziek.zip #{SONGPDFS.join(' ')} \
            output/kerst-2011-bladmuziek.pdf
    }
    puts 'Done creating kerst-2011-bladmuziek.zip'
end
desc "Zipje van alle pdfs"
task :bladmuziek_zip => 'output/kerst-2011-bladmuziek.zip' do end

desc "Alle midi zips"
task :midizips do 
    puts "Created all midi zips"
end

VOICES.each do |voice_i|
    zipfile_voice_i = "output/kerst-2011-midis-#{voice_i}.zip"
    songmidis_of_voice_i = SONGMIDIS.select { |x| x =~ /#{voice_i}/ }

    file zipfile_voice_i => songmidis_of_voice_i do
        puts "---- Creating #{zipfile_voice_i} ----"
        system %{
            zip #{zipfile_voice_i} #{songmidis_of_voice_i.join(' ')}
        }
        puts "Done creating #{zipfile_voice_i}"
    end

    desc "Zipje van alle #{voice_i} midis"
    task voice_i.to_sym => zipfile_voice_i do end

    task :midizips => voice_i.to_sym do end
end

task :bundles => [:midizips, :bladmuziek_zip] do end

task :test do
    #for song_i in SONGPDFS.select {|x| x =~ /^songs-lily/ } do
        #puts song_i.lroot + '-source.ly'
    #end
end
