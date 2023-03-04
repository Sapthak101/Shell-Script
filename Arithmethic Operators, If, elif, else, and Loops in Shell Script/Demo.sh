#!/bin/bash

echo "While Loop"
x=0
while [ $x -lt 10 ]
do 
   echo "$x"
   x=`expr $x + 1`
   y=0
   echo "Nested while loop"
   while [ $y -lt 10 ]
   do
     y=`expr $y + 1`
     echo "$y"
     if [ $y -eq 5 ]
     then
       echo "Break occurs"
       break
     fi
   done
done

echo "Until Loop"
x=0
until [ $x -gt 10 ]
do 
   echo "$x"
   x=`expr $x + 1`
done

echo "Older version of For loop"
for var in {1..10..2}
do
  echo "$var"
done

echo "Newer version of For loop"
for (( x=0; x<10; x++ ))
do 
  echo "$x"
done
