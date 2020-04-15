#!/bin/bash -ex
## -ex in the Shebang make sure that the program exits when there is an error
## and also prints the error stack trace
FILE_NAME="~/Somerandom"
ls $FILE_NAME
echo "Try Printing"
echo $FILE_NAME
