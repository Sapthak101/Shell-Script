#!/bin/bash

echo "Enter the number of elements you want to enter into the array: "
read num

even=0
odd=0

echo "Enter the array elements: "
for (( i=0; i<$num; i++ ))
do
    read a[$i]

    if [ $(( ${a[$i]} % 2 )) -eq 0 ]
    then
        even=$(( $even + ${a[$i]} ))
    else
        odd=$(( $odd + ${a[$i]} ))
    fi
done

echo "The addition of all the even elements are: $even"
echo "The addition of all the odd elements are: $odd"
