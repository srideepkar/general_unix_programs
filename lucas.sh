#lucas sequence
a=1
b=3
echo -en "\n\nEnter the upper limit: "
read n
n=`expr $n - 2`
echo -e "\n\nThe corressponding lucas sequence is: \n"
i=1
sum=0
echo $a
echo $b
while [ $i -le $n ] ; do
 sum=`expr $a + $b`
 echo $sum
 a=$b
 b=$sum
 i=`expr $i + 1`
done 
