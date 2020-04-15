#!/bin/bash
### Checking Return code status ###
ls script3.sh
echo "$?"

ls script1.sh
echo "$?"

HOST="google.com"
ping -c 1 $HOST
RETURN_CODE="$?"
if [ $RETURN_CODE -eq 0 ]
then
echo "HOST is reachable"
else
echo "HOST is unreachable"
exit 1
fi
exit 0

##Using &&
ping -c 1 $HOST && echo "HOST is reachable even now"

if [ 5 -eq 6 ] || [ 5 -eq 5 ]
then
echo "condn :  true"
fi
