#!/bin/bash
echo "Enter the number of rows: "
read row

for (( i=1; i<=$row; i++ ))
do
    for (( k=0;  k<$row-$i; k++ ))
    do
        echo -n " "
    done
    a=1
    for (( j=1;  j<=$i; j++ ))
    do
        echo -n "$a "
        b=$(( $i - $j ))
        c=$(( $a * $b ))
        a=$(( $c / $j ))
    done
    echo ""
done  