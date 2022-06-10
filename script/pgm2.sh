#2.shell script to read 3 numbers and test whether they can be sides of a triangle

if [ $# -ne 0 ]
then
    echo "syntax is <$0>"
 exit 1
fi

echo "Enter the 3 numbers:"
read n1 n2 n3
a=`expr $n1 + $n2`
b=`expr $n1 + $n3`
c=`expr $n2 + $n3`
if [ $a -gt $n3  -a  $b -gt $n2 -a $c -gt $n1 ]
then
    echo " sides of a tringle"
else 
    echo " Numbers are not sides of a triangle"
fi




#sh triangle.sh
#Enter the 3 numbers:
#2 3 4
#sides of a tringle

#sh triangle.sh
#Enter the 3 numbers:
#1 5 9
#Numbers are not sides of a triangle

