#!/bin/bash

echo "Enter the number of rows: "
read row

j=0
for (( i=0; i<$row; i++ ))
do
    for (( k=0;  k<$row-$i-1; k++ ))
    do
        echo -n " "
    done
    for (( k=0; k<=$i; k++ ))
    do
        (( j++ ))
        echo -n "$j"
    done
    echo ""
    j=0
done