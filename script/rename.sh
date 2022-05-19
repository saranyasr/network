#Shell script to rename all ordinary files in a directory with filename.PID of shell
if [ $# -ne 0 ]
then
    echo "syntax error"
    exit
fi


for file in *
do 
    if [ -f $file ]
    then
        newname="$file.$$"
        mv $file $newname
    fi
done
exit
