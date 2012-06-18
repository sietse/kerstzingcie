# This helper function should be called from within the directory
# containing the song's source files. It will save you some work by
# creating the files song-layout-soprano.ly, song-layout-alto.ly, etc,
# based on the template files `XXX-soprano.ly` etc. in the `templates`
# directory.
function getmidi {
    thissong=`ls $1*-source.ly | sed 's/-source\.ly//'`
    cp -v ../../template/XXX* ./
    sed -i "s/XXX/$thissong/" XXX*
    rename -v "s/XXX/$thissong/" XXX*
    #lilypond *midi*.ly
}
