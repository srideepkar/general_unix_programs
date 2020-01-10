#sum = 1!+2!+3!+......nth terms....
clear
echo -e "\n\n\t\tPlease enter the total number of the terms:\c "
read n
sum=0
i=0
fact=1
while [ $i -le $n ]
 do
  sum=`expr $sum + $fact`
  i=`expr $i + 1`
  fact=`expr $fact \* $i`
 done
echo -e "\n\n\t\tThe sum of the series is: $sum"

