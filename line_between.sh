#write a shell script that accepts a file name,starting and ending line numbers as arguments and displays all the lines between the given line numbers.....
if [ $# -ne 3 ] ; then
  echo -e "\n\nParameter mismatch....ERROR...."
else
 arg=$1','$2'p'
 sed -n $arg $3
fi
