#Selection_sort over an array......
clear
echo -en "\n\nEnter the total no. of elements: "
read n
m=0
while [ $m -lt $n ] ; do
  k=`expr $m + 1`
  echo -en "\n\nEnter element no. $k: "
  read a[$m]
  m=`expr $m + 1`
done
echo -e "\n\nYour entered sequence is:-->"
m=0
while [ $m -lt $n ] ; do
  k=`expr $m + 1`
  echo -en "\n\nThe element $k is: ${a[$m]} "
  m=`expr $m + 1`
done
i=0
while [ $i -lt $n ] ; do
 min=${a[$i]}
 pos=$i
 j=`expr $i + 1`
 while [ $j -lt $n ] ; do
  if [ ${a[$j]} -lt $min ] ; then
    min=${a[$j]}
    pos=$j
  fi
  j=`expr $j + 1`
 done
 t=${a[$i]}
 a[$i]=$min
 a[$pos]=$t
 i=`expr $i + 1`
done
echo -e "\n\nSorted sequence:-->"
m=0
while [ $m -lt $n ] ; do
  k=`expr $m + 1`
  echo -en "\n\nThe element $k is: ${a[$m]} "
  m=`expr $m + 1`
done
echo -e "\n\nEnd of program...."
