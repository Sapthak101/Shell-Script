#!/bin/bash
echo "Enter a number: "
read num

temp=$num
prod=1

while [ $temp -ne 0 ]
do
    prod=$(( $prod * $temp ))
    (( temp-- ))
done

echo "The factorial is: $prod"