# A student examination file contains records of students name,paper1,paper2,paper3,paper4...the student is awarded grades as per the folloeing rules--->         points>=8->grade O,   7.0<points<7.9->grade A,    6.0<points<6.9->grade B,     5.0<points<5.9->grade C,   4.0<points<4.9->grade D,   points<4.0->suppliments..
clear
echo -en "\n\nEnter the file name: "
read fname
terminal=`tty`
exec<$fname
while read line 
do
 set $line
 tot=`expr $2 + $3`
 tot=`expr $tot + $4`
 tot=`expr $tot + $5`
 # echo $tot
 tot=`expr $tot \* 10`
 tot=`expr $tot / 400`
 #echo $tot
 if [ $tot -gt 8 ] ; then
   echo -e "\n\nThe student-> $1 got O GRADE..." 
 fi  
 if [ $tot -ge 7 -a $tot -lt 8 ] ; then
   echo -e "\n\nThe student-> $1 got A GRADE..." 
 fi  
 if [ $tot -ge 6 -a $tot -lt 7 ] ; then
   echo -e "\n\nThe student-> $1 got B GRADE..." 
 fi  
 if [ $tot -ge 5 -a $tot -lt 6 ] ; then
   echo -e "\n\nThe student-> $1 got C GRADE..." 
 fi  
 if [ $tot -ge 4 -a $tot -lt 5 ] ; then
   echo -e "\n\nThe student-> $1 got D GRADE..." 
 fi  
 if [ $tot -lt 4 ] ; then
   echo -e "\n\nThe student-> $1 got SUPPLIMENT..." 
 fi  
done
exec<$terminal
echo -e "\n\nEnd of program..."

