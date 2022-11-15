#!/bin/bash

if [ -f $1 ]; then
    echo "$1 have `wc -l $1` lines"
else
    echo "$1 is not a file"
fi