#!/bin/bash

# This script attempts to process a file, but it fails if the file doesn't exist.

file="my_file.txt"

# Incorrect way: This will cause an error if my_file.txt doesn't exist
cat "$file" | while IFS= read -r line; do
  echo "Processing line: $line"
done

# Correct way: Use -f to check if file exist and an appropriate if statement
if [ -f "$file" ]; then
  cat "$file" | while IFS= read -r line; do
    echo "Processing line: $line"
  done
else
  echo "Error: File '$file' not found."
fi