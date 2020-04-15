#!/bin/bash
now(){
echo "It's $(date +%r)"
}
function hello(){
###Functional Parameters start from $1
echo "hello $1"
now
}
hello Yogesh

helloWithParams(){
for NAME in $@
do
echo "hello $NAME"
done
}
helloWithParams Yogesh Sowmiyha Chatresh Aruna

##Variables are always global - value of the variables will be empty untill assigned
my_function(){
echo "my_function called"
local LOCAL_VAR=1
GLOBAL_VAR=1
echo "LOCAL_VAR $LOCAL_VAR"
}
echo "GLOBAL_VAR(before calling the function) : $GLOBAL_VAR"
my_function
echo "my_function exit status : $?"
echo "GLOBAL_VAR(after calling the function) : $GLOBAL_VAR"
backup_file(){
if [ -f $1 ] 
then
  BACK="/tmp/$(basename $1).$(date +%F).$$"
  echo "Backing up $1 to $BACK"
  cp $1 $BACK
else
  return 1
fi
}
backup_file /etc/host-s
if [ "$?" -eq 0 ]
then
   echo "BACKUP succeeded"
else
   echo "BACKUP failed"
   exit 1
fi
