#!/bin/sh
echo "Enter the month Name: "
read x
if [ "$x" = "october" ]
then
	echo "User entred $x"
elif [ "$x" = "august" ]
then
	echo "User entered $x"
else
	echo "Not a valead entery"
fi
	
