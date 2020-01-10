#file open and close....
#echo -en "\n\nEnter the file name: "
#read name
terminal=`tty`
l=0
w=0
c1=0
fnc=$1
if [ $# -eq 2 ] ; then
   exec<$2
   while read line
    do
     #echo $line
     set $line
     d=`expr "$line" : '.*'`
     c1=`expr $c1 + $d`
     w=`expr $w + $#`
     i=`expr $i + 1`
   done
   case $fnc in
    "-l")
         echo -e "\n\nTotal no. of lines: $i"
	;;
    "-w")
         echo -e "\n\nTotal no. of words: $w"
       ;;
    "-c")
         echo -e "\n\nTotal no. of charecters: $c1"
       ;;
      *)
        echo -e "\n\nIn-valid parameter passing...."
	;;
   esac	
   exec<$terminal
else
  echo -e "\n\nParameter mismatch...." 
fi    
echo -e "\n\nEnd of program"
