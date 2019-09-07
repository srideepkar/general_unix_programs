#print the user name those are newly logged in or logged out after starting of running of this program....interval of 5 seconds..
clear
who | cut -d " " -f1>who_old
while [ 1 ] ; do
  who | cut -d " " -f1>who_new
  for usrnm in `comm -23 who_old who_new` ; do
    echo -en "\n\nLogged out: $usrnm"
  done
  for usrnm in `comm -13 who_old who_new` ; do
    echo -en "\n\nNewly Logged in: $usrnm"
  done
  cat who_new>who_old
  rm who_new
  sleep 5
done

