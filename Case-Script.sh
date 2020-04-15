#!/bin/bash
read -p "Enter y or n : " ANSWER
case $ANSWER in
    [yY]|[yY][eE][sS])
      echo "You answered Yes"
      ;;
    [nN]|[nN][oO])
      echo "You answered No"
      ;;
    [[:digit:]][[:digit:]])
      echo "You entered some number"
      ;;
    *)
    echo "You answered wrong"
    ;;
esac
logger -s "Message"
