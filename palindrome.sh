#!/bin/bash

if [ $1 = `echo $1 | rev` ]; then
    echo "$1 is palindrome"
else
    echo "$1 is not palindrome"
fi
