#sum of 4+7+4+7+4+7+4+........n
tput clear
echo -en "\n\nEnter any integer: "
read n
sum=0
j=0
while [ $j -lt $n ] 
 do
 rem=`expr $j % 2`
 if [ $rem -eq 0 ] ; then
   sum=`expr $sum + 4`
 else
   sum=`expr $sum + 7`
 fi
 j=`expr $j + 1`
done
echo -en "\n\nThe Sum is: $sum"
echo -e "\n\n\n\nEnd of program....\n\n\n\n"  
