#write a shell script/program which reads a word and test whether it contains a vowel or not....
clear
echo -en "\n\nEnter a word: "
read str
#echo $str
flag=0
k=1
while true ; do
 i=`echo $str|cut -c $k`
 #echo $i
 if [ -z $i ] ; then
   break
 else
  for j in a e i o u A E I O U
   do
    if [ $j = $i ] ; then
     flag=1
     break
    fi
   done 
  k=`expr $k + 1`
  fi
done
if [ $flag -eq 0 ] ; then
  echo -e "\n\nThe entered word contains no vowel.."
else
  echo -e "\n\nThe entered word contains vowel.."
fi
echo -e "\n\nEnd of program...."    
