#linear search over an array.....
clear
echo -en "\n\nEnter the total no. of elements: "
read n
m=1
while [ $m -le $n ] ; do
 echo -en "\n\nEnter the element $m: "
 read a[$m]
 m=`expr $m + 1`
done
echo -en "\n\nEnter the element to be searched: "
read sn
m=1
flag=0
while [ $m -le $n ] ; do
 if [ ${a[$m]} -eq $sn ] ; then
   echo -e "\n\nElement found at position: $m"
   flag=1
 fi
 m=`expr $m + 1`
done
if [ $flag -eq 0 ] ; then
 echo -e "\n\nElement does not found !!!!!!!!!"
fi
echo -e "\n\nEnd of program..."
