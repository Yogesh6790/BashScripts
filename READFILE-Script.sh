#!/bin/bash
LINE_NUM=1
##READING FILE####
while read LINE
do
  echo "${LINE_NUM} : $LINE"
  ((LINE_NUM++))
done < ~/bash-scripts/test.txt
echo ""
echo "READING with GREP"
LINE_NUM=1
###GREP AND READ FILE###
grep yogesh ~/bash-scripts/test.txt | while read LINE
do
  echo "$LINE_NUM : $LINE"
  ((LINE_NUM++))
done

echo ""
echo "Reading Multiple words from Line"
###READING MULTIPLE WORDS
while read NAME AGE REM
do
  echo "NAME : $NAME , AGE : $AGE, REMAINING : $REM"
done < ~/bash-scripts/NameAge.txt

###BREAK AND CONTINUE can be used just like how it is used in Java
echo ""
echo "Infinite Loop - exit with break"
while true
do
read -p "1. Show Disk Usag or 2. Show uptime : " CHOICE
case $CHOICE in
     1)
      df -h
      ;;
     2)
      uptime
      ;;
     *)
      echo " Wrong Command - Exiting"
      break
      ;;
esac
done
