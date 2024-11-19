#!/bin/bash

N=$1
input_file=$2
output_file_prefix=$(basename "$input_file" .txt)"-split-"

total_lines=$(wc -l < "$input_file")

split_size=$((total_lines / N))
rem=$((total_lines % N))

if [ "$rem" -eq 0 ]; then
    split -n "$N" -d --additional-suffix=.txt "$input_file" "$output_file_prefix"
else
    split -l "$((split_size + 1))" -d --additional-suffix=.txt "$input_file" "$output_file_prefix"
fi