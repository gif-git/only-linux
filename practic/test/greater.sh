#!/bin/bash
echo "Enter any number: "
read number
x=$number 
if [ $x -gt 10 ]
then 
	echo "The user enter the number greater the 10"
else
	echo "Not"
fi
