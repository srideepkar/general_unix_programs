#cuurent time will show right side of the terminal.have to run as background process.But NOT SATISFACTORY...........
clear
while [ 1 ] ; do
 clear
 terminal=`tty`
 h=`date|tr -s ' '`
 h=`echo $h|cut -d " " -f4`
 h=`echo $h|cut -d ":" -f 1-2`
 echo -e "\t\t\t\t\t$h\n"
 sleep 60
 exec<$terminal
done
