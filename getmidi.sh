# This function should be called from within the directory containing
# the song's source files.
function getmidi {
    thissong=`ls *-source.ly | sed 's_-source\.ly__'`
    cp -v ../../template/XXX* ./
    sed -i "s/XXX/$thissong/" XXX*
    rename -v "s/XXX/$thissong/" XXX*
    #lilypond *midi*.ly
}
