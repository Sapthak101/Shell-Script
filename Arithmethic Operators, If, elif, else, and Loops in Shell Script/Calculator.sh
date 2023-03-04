#!/bin/bash

flag=1

while [ $flag -eq 1 ]
do
    echo "Welcome to our basic calculator: "
    echo "1. Addition"
    echo "2. Substraction"
    echo "3. Multiplication"
    echo "4. Division"

    echo "Enter 1/2/3/4 for the respective operation"
    read num

    echo Enter two numbers:
    read num1 num2

    if [ $num -eq 1 ]
    then
        add=$(($num1 + $num2))
        add=$(( $num1 + $num2 ))
        add=`expr $num1 + $num2`
        add=`expr $num1 + $num2 `
        echo "The addition of two number is: $add"
    elif [ $num -eq 2 ]
    then 
        sub=$(($num1 - $num2))
        echo "The substraction of two numbers is: $sub"
    elif [ $num -eq 3 ]
    then  
        mul=$(( $num1 * $num2 ))
        echo "The multiplication of two numbers is: $mul"
    else
        div=$(( $num1 / $num2 ))
        echo "The division of two numbers is: $div"
    fi
    echo "Do you want to continue further calculation "Y/N": "
    read option

    if [  $option -ne "Y" ]
    then    
        flag=2
    fi
done

#boolean in shell script does not goes with anyother operator othertha -a and -o