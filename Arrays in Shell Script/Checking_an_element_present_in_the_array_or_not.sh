#!/bin/bash

echo "Enter the number of elements you want to enter into the array: "
read num

echo "Enter the array elements: "
for (( i=0; i<$num; i++ ))
do
    read a[$i]
done

echo "Enter the element you want to search: "
read num1


count=0
for (( i=0; i<$num; i++ ))
do
    if [ $num1 -eq ${a[$i]} ]
    then
        echo "The element is found at position $(( $i + 1 ))"
        break
    else
        (( count++ ))
    fi
done

if [ $count -eq $num ]
then
    echo "The element $num1 is not found in the array"
fi