#!/bin/sh
if [ -d $1 ]
then 
	echo "This is the directory $1"
elif [ -f $1 ]
then
	echo "This is the file $1"
else
	echo "No such a file or directory"
fi
