#!/bin/bash

echo "Enter the number of elements you want to enter into the array: "
read num

echo "Enter the array elements: "
for (( i=0; i<$num; i++ ))
do
    read a[$i]
done

for (( i=0; i<$(( $num - 1 )); i++ ))
do
    for (( j=$(( $i + 1 )); j<num; j++ ))
    do
        if [ ${a[$i]} -lt ${a[$j]} ]
        then
            temp=${a[$i]}
            a[$i]=${a[$j]}
            a[$j]=$temp
        fi
    done
done

echo "The array elements sorted in the desending order: "
for (( i=0; i<$num; i++ ))
do
    echo "${a[$i]} "
done