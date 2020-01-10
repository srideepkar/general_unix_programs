#write a shell script that will be able to take any number of file name as arguments and checks whether a file exists and has size greater than zero;if such file exists the script checks whether it is a file or a directory.The script should respond using appropriate message....
for i in $@ ; do
 if [ -e $i ] ; then
   if [ -f $i ] ; then
     if [ -z $i ] ; then
       echo -e "\n\nThe Size of the file $i is zero.."
     else
       echo -e "\n\nThe size of the file $i is not zero..."
     fi
   else
     echo -e "\n\n$i is not a file..."
   fi
 else
   echo -e "\n\n$i does not exists..."
 fi  
done     
echo -e "\n\nEnd of program..."     
