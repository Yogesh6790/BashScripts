#!/bin/bash
echo ""
echo "What script is running ? $0"
echo "Who is running : $1"

###VARIABLE ASSIGINING###
echo "Scripting is Fun!"
echo ""
MY_SHELL="bash"
echo "I like $MY_SHELL shell!"
echo ""
MY_SHELL1="bash"
echo "I am ${MY_SHELL1}ing on my keyboard."
echo ""
HOST1="Yogesh macbook"
WHOSE_MAC_BOOK=$HOST1
echo "I'm using ${WHOSE_MAC_BOOK}"
echo ""

###CONDITIONAL_CHECK###
EMPTY_STR=""
NON_EMPTY_STR="Se"
if [ -z $NON_EMPTY_STR ]
then
  echo "Empty_STR is empty"
else
echo "STR is not empty"
fi
if [ 5 eq 6 ]
then
echo "No's are equal"
elif [ 5 -lt 6 ]
then
echo "No is smaller"
else
echo "No is greater"
fi

###LOOP###
for COLOR in red green blue
do
echo "COLOR: $COLOR"
done

read -p "NO_1 : " VAL_1
read -p "NO_2 : " VAL_2
SUM=$((${VAL_1}+${VAL_2}))
echo "SUM : $SUM"
echo ""
echo "CURRENT DATE : $(date +%F)"
