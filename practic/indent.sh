#!/bin/bash
x=2

echo "Learning Indentation"
echo

if [ $x -eq 0 ]
then
 echo "In the If Block."
 echo "Value of x is zero"
else
 echo "In the wlse block."
 echo "Value of x is not zero"
fi

echo 
echo "This statement is out of if/else block"