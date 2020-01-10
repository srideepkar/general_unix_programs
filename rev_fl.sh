#write a shell program which prints a text file in reverse way..i.e the last line becomes the first line,the second last line becomesthe second line,....the first line becomes the last line......
clear
echo -en "\n\nEnter any text-file name: "
read file
rfl=""
terminal=`tty`
exec<$file
while read line ; do
 rfl=$line'\n'$rfl
done
exec<$terminal
echo -e "\n\n$rfl"
echo -e "\n\n\t\t Done...."
