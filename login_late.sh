#user will provide a valid user name as command line argument...find out how many minutes does he/she late after starting running of this program....
clear
logname=$1
t=0
while [ 1 ] ; do
 who | grep $logname>/dev/null
 if [ $? -eq 0 ] ; then
   echo -e "\n\n $logname is logged on..."
   echo -e "\n\n$logname is $t minutes late...."
   exit
 else
   sleep 60 
   t=`expr $t + 1`
 fi
done
echo -e "\n\nEnd of program...."
