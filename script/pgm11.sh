#11. Shell script to print specified range of lines from given files



if [ $# -ne 3 ]
then 
    echo "syntax error"
    echo "<*.sh filename lowerlimt upperlimit>"
    exit
fi

file=$1
l=$2
u=$3
echo "\n----------------------"
echo "lines between $l - $u is printed below\n"

cat $file | head -$u | tail -n +$l
exit


