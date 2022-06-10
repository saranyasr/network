#8. Shell script to display a file from last line to first line
if [ $# -ne 1 ]
then
    echo "syntax error"
    echo " $0 filename"
    exit
fi

file=$1
ter=`tty`
exec < $file
a=0
while read line
do
a=`expr $a + 1`
done
exec < $ter

while [ $a -gt 0 ]
do
cat $file | head -$a | tail -1
a=`expr $a - 1`
done
