#!/bin/sh
echo "Enter the name of the file: "
read files

if [ -r $files ]
then 
	echo "file is availabe and readable too"
	else
		echo "file not available"
fi
