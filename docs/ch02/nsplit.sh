#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <number_of_lines> <input_file> <output_file_prefix>"
    exit 1
fi

N=$1
input_file=$2
output_file_prefix=$3

split -l "$N" "$input_file" -d "$output_file_prefix"