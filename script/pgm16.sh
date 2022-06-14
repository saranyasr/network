#16.shell script to perform ncr

if [ $# -ne 0 ]
then
  echo "invalid syntax! try <$0>"
  exit 0
fi
fn()
{
    a=$1
    f=1
    while [ $a -ge 1 ]
    do
        f=`expr $f  \* $a`
        a=`expr $a - 1`
    done
   return $f
}

echo "enter n for ncr"
read n
echo "enter r for ncr"
read r
p=`expr $n - $r`
fn $n
r1=$?
fn $r
r2=$?
fn $p
r3=$?

d=`expr $r2  \* $r3`
result=`expr $r1 / $d`
echo "$n C $r = $result"


