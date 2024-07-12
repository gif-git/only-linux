#!/bin/sh
echo "Enter the name of the file: "
read files

if [ -f $files ]
then 
	echo "file is already exists"
	else
            touch $files
	    echo "New file created"
fi
