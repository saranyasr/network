



#10. Shell script to display the content of a directory file in windows style


if [ $# -ne 0 ]
then
     echo "Syntax error"
     echo "< $0 >"
     exit
fi

ter=`tty`
ls -l > lsl
exec < lsl
cd=0
while read line
do
    
     cd=`expr $cd + 1`
     if [ $cd -eq 1 ]
     then
        echo $line
         continue
     fi
    
    i=`echo $line | cut -d " " -f 9-`
    t=`date +%d/%m/%Y"  "%r -r "$i"`
    b=`echo $line | cut -d " " -f 5`
    if [ -d "$i" ]
    then
        echo  "$t\t<DIR>\t  $b\t   $i"       
    else
    
        echo  "$t\t     \t  $b\t   $i"    
    fi
done
    
exec < $ter     
rm lsl
