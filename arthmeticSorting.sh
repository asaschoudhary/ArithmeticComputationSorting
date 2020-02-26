#!/bin/bash -x
#print the massage
echo "Welcome the Arithmetic Operation"
#Display the three input
echo "Enter the first input"
read a
echo "Enter the second input"
read b
echo "Enter the third input"
read c
compute=`echo "scale=2 ; $a+$b*$c" | bc -l`
echo $compute




