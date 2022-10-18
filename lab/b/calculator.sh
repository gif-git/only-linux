#!/bin/sh
echo "Enter the value for a:"
read a
echo "Enter the value for b: "
read b
echo "Enter the operator:"
echo -e "Addition: +\nSubstration: -\nMultiplication: \nDivision:"
read c
case "$c" in
	+) c= `expr $a + $b`
		echo "Sum of $a and $b is $c";;
	esac
