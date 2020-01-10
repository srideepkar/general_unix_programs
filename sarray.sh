#removal of duplicate items from a sorted array....
clear
echo -en "\n\nPlease enter the total number of terms: "
read n
i=1
while [ $i -le $n ]
do
 var=a$i
 echo -en "\nEnter the $i element: "
 read $var
 i=`expr $i + 1`
done
i=1
echo -e "\n\nThe elements of the array are: "
while [ $i -le $n ]
do
 var=a$i
 eval echo -e "Element $i is: \$$var"
 i=`expr $i + 1`
done 
echo -en "\n\nSo the resultant array is:\n\n";
i=1
p=1
limit1=`expr $n - 1`
while [ $i -le $limit1 ]
do
 var1=a$i
 eval c1=\$$var2
 l=`expr $i + 1`
 var2=a$l
 eval c2=\$$var2
 if [ $c1 -ne $c2 ] ; then
  tvar=r$p
  eval $tvar=$c1
  p=`expr $p + 1`
 fi
 i=`expr $i + 1`
done
var1=a$n
tvar=r$p
eval $tvar=\$$var1
i=1
while [ $i -le $p ] ; do
 tvar=r$i
 eval echo \$$tvar
 echo -n " "
 i=`expr $i + 1`
done
echo -e "\n\n\t\tEnd of program...."
 
