#!/bin/bash

echo Enter a number:
read num

temp=$num
sum=0

while [ $temp -ne 0 ]
do
    rem=$(( $temp % 10 ))
    temp=$(( $temp / 10 ))
    sum=$(( $rem + $(( $sum * 10 )) )) 
done
echo "The reverse of $num is $sum"

#for pallindrome
if [ $num -eq $sum ]
then
    echo "The number is a pallindrome number"
else
    echo "The number is not a pallindrome number"
fi