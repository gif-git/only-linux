#!/bin/sh
if [ -d $1 ]
then 
	echo "Directory already exists"
else
	mkdir "$2"
	echo "Folder created $2"
fi
