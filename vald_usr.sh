#check whethera given user-name is valid or not.......
clear
echo -e -n "\n\n\t\tPlease enter a user-name: "
read usrname
tempname=`echo $usrname:`
grep ^$tempname /etc/passwd > /dev/null
if [ $? -eq 0 ]
 then
   echo -en "\n\nValid user-name..."
 else
   echo -en "\n\nIN-Valid user-name..."
fi
echo -e "\n\n End of program....."
