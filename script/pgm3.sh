#3.Shell script using command line to test whether given number is prime or not
if [ $# -ne 1 ]
then
  echo "syntax error"
  echo "syntax is <$0> <number>"
  exit
fi

n=$1
i=2
f=0

if [ $n -eq 1 ]
then
echo "the number $n is not a prime number"
exit
fi


while [ $i -le `expr $n / 2` ]
do

   if [ `expr $n % $i` -eq 0 ]
   then
      f=1;

    break;
   fi
i=`expr $i + 1`
done
if [ $f -eq 1 ]
then
echo "number $n is not a prime number"
else
echo "number $n is a prime number" 
fi

