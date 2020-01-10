#sum = 1+2+3+4+10+5+6+7+8+26+9+10......nth terms....
clear
echo -e "\n\n\t\tPlease enter the total number of the terms:\c "
read n
fsum=0
tsum=0
i=1
t=1
while [ $i -le $n ]
 do
  rem=`expr $i % 5`
  if [ $rem -eq 0 ] ; then
    fsum=`expr $fsum + $tsum`
    tsum=0
  else
    fsum=`expr $fsum + $t`
    tsum=`expr $tsum + $t`
    t=`expr $i + 1`
  fi
  i=`expr $i + 1`
 done
echo -e "\n\n\t\tThe sum of the series is: $fsum"

