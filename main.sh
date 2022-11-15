#!/bin/bash

echo "----- Menu -----
1. Show the first n numbers of the Fibonacci series
2. Check if a string is palindrome
3. Show the number of lines of a file
4. Exit"

while true; do
    read -p "Enter an option: " o
    echo "You selected option $o"
    case $o in
        1)
            read -p "Enter an integer: " n
            ./fibonacci.sh $n
            ;;
        2)
            read -p "Enter a string: " s 
            ./palindrome.sh $s
            ;;
        3)
            read -p "Enter the path: " f
            ./numberLines.sh $f
            ;;
        4)
            ./exit.sh
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done