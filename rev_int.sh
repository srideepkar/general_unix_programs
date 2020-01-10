#write a shell script that reads a +ve integer from the user and print in reverse order.your script should check for a valid +ve integer number.
clear
echo -en "\n\nEnter a positive integer: "
read no
if [ $no -le 0 ] ; then
  echo -e "\n\nWrong data entered...PROGRAM TERMINATED..."
  exit
fi
n=$no
sum=0
while [ $n -gt 0 ] ; do
 q=`expr $n % 10`
 n=`expr $n / 10`
 sum=`expr $sum \* 10`
 sum=`expr $sum + $q`
done
echo -en "\n\nThe reverse integer is: $sum"
echo -e "\n\n\t\tDone..."
