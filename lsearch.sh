#linear search over a virtual array....
clear
echo -e "\n\nEnter the no. of terms: \c"
read n
i=1
while [ $i -le $n ] ; do
 var=a$i
 echo -en "\n\n Enter the $i element: "
 read $var
 i=`expr $i + 1`
done
i=1
while [ $i -le $n ] ; do
 var=a$i
 eval echo -n "\$$var"
 echo -e "\n\n"
 i=`expr $i + 1`
done
i=1
echo -en "\n\nEnter the search item: "
read sitem
status=0
while [ $i -le $n ]
 do
  var=a$i
  b=$var
  echo -e "\n\nLocation number: $b\c"
  eval c=\$$b
  echo " content= $c"
  if [ $i -eq 1 ] ; then
   max=$c
  elif [ $max -lt $c ] ; then
   max=$c
  fi
  if [ $sitem -eq $c ] ; then
   echo -en "\n\nSearch item $sitem has been found at location a[$i]"
   status=1
  fi
  i=`expr $i + 1`
 done
echo -en "So the maximum of all inputs is : $max"
if [ $status -eq 0 ] ; then
 echo -e "\n\nUnsuccessful searching with $sitem in the array...."
fi 
echo -e "\n\n\n\nEnd of Program...."

