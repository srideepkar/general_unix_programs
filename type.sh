#write a shell script/program to simulate the dos command "TYPE" in unix enviornment
echo -e "\n\n"
while [ $# -gt 0 ] ; do
 cat $1
 shift
done
echo -e "\n\n"
