# bash

Some bash functions. Write [./menu.sh](menu.sh) in the terminal to run.

```bash
----- Menu -----
1. Show the first n numbers of the Fibonacci series
2. Check if a string is palindrome
3. Show the number of lines of a file
4. Exit
```

1. Show the first n numbers of the Fibonacci series

```bash
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
```

2. Check if a string is palindrome

```bash
#!/bin/bash

if [ $1 = `echo $1 | rev` ]; then
    echo "$1 is palindrome"
else
    echo "$1 is not palindrome"
fi
```

3. Show the number of lines of a file

```bash
#!/bin/bash

if [ -f $1 ]; then
    echo "$1 have `wc -l $1` lines"
else
    echo "$1 is not a file"
fi
```

4. Exit

```bash
#!/bin/bash

echo "Goodbye, $USER"
```
