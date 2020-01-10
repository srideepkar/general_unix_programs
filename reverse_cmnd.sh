#write a shell script to reverse each of the string supplied as command line arguments.(Supply at least three strings as command line aurguments for each case...)
echo -en "\n\nThe reversed string: "
while [ $# -gt 0 ] ; do 
 str=$1
 rstr=""
 j=1
 while [ 1 ] ; do
  i=`echo $str|cut -c $j`
  if [ -z $i ] ; then
    break
  else
   rstr=$i$rstr
   j=`expr $j + 1`
  fi
 done
 echo -n $rstr
 echo -n " "
 shift
done
echo -e "\n\nEnd of program"
