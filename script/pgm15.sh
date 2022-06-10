# 15 Shell script to perform a menu driven program to display
if [ $# -ne 0 ]
then
    echo "Syntax error"
    echo "$0"
    exit
fi


while :
do
echo "\n1.Audinary files"
echo "2.Directory files"
echo "3.Special files"
echo "4.Readable files"
echo "5.Writable files"
echo "6.Executable files"
echo "-----------------------"
echo "\nselect your option:"
read opt

case $opt in

1) echo "Audinary files\n"
for file in *
do
    if [ -f $file ]
    then
        echo "$file"
    fi
done
;;
2) echo "directory files\n"
for file in *
do
        if [ -d $file ]
        then
                echo "$file"
        fi
done
;;
3) echo "Special files\n"
for file in *
do
        if [ -s $file ]
        then
                echo "$file"
        fi
done
;;
4) echo "Readable files\n"
for file in *
do
        if [ -r $file ]
        then
                echo "$file"
        fi
done
;;
5) echo "writable files\n"
for file in *
do
        if [ -w $file ]
        then
                echo "$file"
        fi
done
;;
6) echo "Exicutable files\n"
for file in *
do
        if [ -x $file ]
        then
                echo "$file"
        fi
done
;;
*)exit
;;
esac
done
