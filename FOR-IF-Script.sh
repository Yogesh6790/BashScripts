#!/bin/bash
for FILE in *.sh
do
if [ -f $FILE ]
then
file=$FILE
if [ $file != "Newscript4.sh" ]
then
echo "Reading $FILE"
mv $FILE "NEW${FILE}"
fi
fi
done
