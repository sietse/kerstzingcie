directory "pdf"

# Take a file, assume everything up to the last hyphen is the root, and
# return a string of the form `root-source.ly`.
def lily_source(l)
    return l.gsub(/(.*)-(.*)/, '\1-source.ly')
end
def lily_dir(l)
    return l.split('/')[0..-2].join('/')
end

class String
    # All the following methods manipulate a string of the form
    # 'dir/song-arranger-layout.ly'
    def lroot
        # => 'dir'
        self.split('-')[0..-2].join('-')
    end

    def lfile
        # => 'song-arranger-layout.ly'
        self.split('/')[-1]
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

LILY_MASTERS = [
    'songs-lily/a_little_child/a_little_child-ep-twostave.ly',
    'songs-lily/a_merry_christmas/a_merry_christmas-anon1-fourstave.ly',
    'songs-lily/coventry_carol/coventry_carol-shaw-twostave.ly',
    'songs-lily/ich_steh_an/ich_steh_an-bach-fourstave.ly',
    'songs-lily/joy_to_the/joy_to_the-haendel-twostave.ly',
    'songs-lily/o_tannenbaum/o_tannenbaum-dewagtere-fourstave.ly',
    'songs-lily/rejoice_and_be/rejoice_and_be-twostave.ly',
    'songs-lily/stille_nacht/stille_nacht-ivens-twostave.ly'
]

LILY_MASTERS.each do |master|
    # Create the PDF dependencies.
    file master.lpdf => [master, master.lsource()] do
        system %{
            lilypond --output #{master.lsansext()} #{master.lfile()}
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

task :create_pdfs => LILY_MASTERS

task :test do
    jan = 'asdf.ly'
    puts jan.ext('pdf')
end
