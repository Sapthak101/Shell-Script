#!/bin/bash

echo "Enter two numbers: "
read num1 num2

min=0
if [ $num1 -gt $num2 ]
then
    min=$num2
elif [ $num2 -gt $num1 ]
then
    min=$num1
else
    min=$num1
fi

gcd=0

for (( i=1; i<=$min; i++ ))
do
    if [ $(( $num1 % $i )) -eq 0 -a $(( $num2 % $i )) -eq 0 ]
    then
        gcd=$i
    fi
done

echo "The GCD is: $gcd"