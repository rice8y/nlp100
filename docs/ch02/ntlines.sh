#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number_of_lines> <file>"
    exit 1
fi

N=$1
file=$2

tail -n "$N" "$file"