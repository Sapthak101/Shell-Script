#!/bin/bash

echo "Enter the number of elements you want to enter into the array: "
read num

max=0
echo "Enter the array elements: "
for (( i=0; i<$num; i++ ))
do
    read a[$i]

    if [ $i -eq 0 ]
    then
        max=${a[0]}
    else 
        if [ $max -lt ${a[$i]} ]
        then
            max=${a[$i]}
        fi
    fi
done

echo "The maximum element in the array is: $max"
