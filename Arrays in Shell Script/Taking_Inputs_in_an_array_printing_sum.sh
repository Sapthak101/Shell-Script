#!/bin/bash

echo "Enter the number of elements you want to enter into the array: "
read num

sum=0
echo "Enter the array elements: "
for (( i=0; i<$num; i++ ))
do
    read a[$i]
    sum=$(( $sum + ${a[$i]} ))
done

echo The elements entered are: 
for (( i=0; i<$num; i++ ))
do
    echo -n "${a[$i]} "
done
echo ""

echo "The sum of the elements is: $sum"
