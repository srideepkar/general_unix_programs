#password missing checking
terminal=`tty`
flag=0
exec</etc/passwd
while read line
 do
  i=`echo $line|cut -d ":" -f2`
  if [ -z $i ] ; then
    j=`echo $line|cut -d ":" -f1`
    echo -en "\n\nPassword missing for the user: $j."
    flag=1
  fi
 done
if [ $flag -ne 1 ] ; then
  echo -e "\n\nNo such user name is found...."
fi
exec<$terminal
