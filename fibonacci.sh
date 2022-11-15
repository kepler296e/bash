#!/bin/bash

a=0
b=1
for (( i=0; i<$1; i++ ))
do
    if [ $i -eq 0 ]; then
        echo $a
    elif [ $i -eq 1 ]; then
        echo $b
    else
        sum=$((a+b))
        a=$b
        b=$sum
        echo $sum
    fi
done
