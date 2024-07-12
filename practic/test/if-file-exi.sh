#!/bin/sh
echo "Enter the name of the file: "
read files

if [ -x $files ]
then 
	echo "file is availabe and executable too"
	else
		echo "file not available"
fi
