# All the following methods manipulate a string of the form
# 'dir/song-arranger-layout.ly'
class String
    # => 'dir/song-arranger'
    # Used by the other methods.
    def lroot
        # => 'dir'
        self.split('-')[0..-2].join('-')
    end

    def lsansext
        # => dir/song-arranger-layout
        # For lilypond's --output argument
        self.gsub(/\.[a-z]*$/, '')
    end

    def lsource
        # => 'dir/song-arranger-source.ly'
        self.lroot + '-source.ly'
    end

    def lpdf
        # => 'dir/song-arranger-layout.pdf'
        self.ext('pdf')
    end

    def lmidis_ly
        # => ['dir/song-arranger-midi-soprano.ly', ..., 'etc-bass.ly']
        ['soprano', 'alto', 'tenor', 'bass'].map { |voice|
            self.lroot + '-midi-' + voice + '.ly'
        }
    end

    def lmidis_midi
        # ['dir/song-arranger-midi-soprano.midi', ..., 'etc-bass.midi']
        ['soprano', 'alto', 'tenor', 'bass'].map { |voice|
            self.lroot + '-midi-' + voice + '.midi'
        }
    end
end

# MASTER-inhoudsopgave.txt contains the songs and their index numbers.
# MASTER stores this as a hash: song => number
tmp = {}
open('MASTER-inhoudsopgave.txt').each { |line| 
    if not line =~ /^#/
        line = line.gsub!(/\n/, '')
        tmp[line.split(': ')[1]] = line.split(': ')[0]
    end
}
MASTER = tmp

LILYS_PDF = MASTER.keys.select {|x| x =~ /^songs-lily/ }
LILYS_LY = LILYS_PDF.map { |x| x.ext('ly') }

# Make sure the song numbers are Oll Korrekt in each file
# This task is *always* invoked --- it's only put in a task in case I
# ever want to reuse it.
task :update_title_numbers => ['MASTER-inhoudsopgave.txt'] do
    MASTER.each do |filename, nummer|
        # For each Lilypond song ...
        filename = filename.ext('ly')
        if (filename =~ /^songs-lily/) != nil
            # ... see how the title is numbered ...
            lilyfile = open(filename)
            line = lilyfile.readline
            while (line =~ /nummer = "/) == nil
                line = lilyfile.readline
            end
            # ... and change that number if needed.
            line.gsub!(/^ *nummer = "/, '')
            if line.scan(/^[0-9π¾]*\./)[0].eql?(nummer)
                puts "nochangery"
            else
                puts "changery"
                system %{
                    sed -i '/nummer = "/s/".*"/"#{nummer}"/' \
                        #{filename}
                }
            end
        end
    end
end
Rake::Task["update_title_numbers"].invoke()

LILYS_LY.each do |master|
    # Create the PDF dependencies.
    file master.lpdf => [master, master.lsource()] do
        system %{
            lilypond --output #{master.lsansext()} #{master}
            rm #{master.ext('ps')}
        }
    end
    
    # Create the midi dependencies.
    ly_midi = master.lmidis_ly.zip(master.lmidis_midi)
    ly_midi.each do |midi_ly, midi_midi|
        file midi_midi => [master.lsource(), midi_ly] do
            system %{
                lilypond --output #{midi_ly.lsansext()} #{midi_ly}
            }
        end
    end
end

task :pdfs => LILYS_PDF

task 'output/kerst-songbook-2011.pdf' => LILYS_PDF do
end

task :midis => LILYS_PDF.map { |x| x.lmidis_midi() }.flatten

task :test => [:update_title_numbers] do
    puts 'hi'
end
