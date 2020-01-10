#prime number checking upto the user given range....
clear
echo -e -n "Enter the upper limit: "
read n
i=2
while [ $i -le $n ] ; do
  flag=0
  l=`expr "sqrt($i)"|bc`
  d=2
  while [ $d -le $l ]
   do
    r=`expr $i % $d`
    if [ $r -eq 0 ]
     then
        flag=1
    fi
    d=`expr $d + 1`
   done
 if [ $flag -eq 0 ] ; then
   echo -e "\n\n$i is a prime number"
 fi
 i=`expr $i + 1`
done
echo -e "\n\nDone"
