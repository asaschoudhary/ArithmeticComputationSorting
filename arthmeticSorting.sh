1#!/bin/bash -x
#print the massage
echo "Welcome the Arithmetic Operation"
#Display the three input
echo "Enter the first input"
read a
echo "Enter the second input"
read b
echo "Enter the third input"
read c
#All the arithmetic operation store in a dictionary
declare -A arithmeticDictionary
compute=`echo "scale=2 ; $a+$b*$c" | bc -l`
arithmeticDictionary[1]="$compute"
compute1=`echo "scale=2 ; $a*$b+$c" | bc -l`
arithmeticDictionary[2]="$compute1"
compute2=`echo "scale=2 ; $a%$b+$c" | bc -l`
arithmeticDictionary[3]="$compute2"
compute3=`echo "scale=2 ; $a%$b+$c" | bc -l`
arithmeticDictionary[4]="$compute3"
for value in ${!arithmeticDictionary[@]}
do
	arithmeticArray[$value]="${arithmeticDictionary[$value]}"
done
echo ${arithmeticArray[@]}
for((count=1;count<=4;count++))
do
	for((count1=($count+1);count1<=4;count1++))
	do
		if((`echo "${arithmeticArray[$count]}<${arithmeticArray[$count1]}" | bc -q`==l)) 
		then
			temp="${arithmeticArray[$count]}"
			arithmeticArray[$count]="${arithmeticArray[$count1]}"
			arithmeticArray[$count1]=$temp
 		fi
	done
done
echo "sortedArray in ascending order:"${arithmeticArray[@]}











