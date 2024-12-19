#!/bin/bash

# This script demonstrates the correct way to handle a file that might not exist.

file="my_file.txt"

if [ -f "$file" ]; then
  # Process the file only if it exists
  cat "$file" | while IFS= read -r line; do
    echo "Processing line: $line"
  done
else
  echo "Error: File '$file' not found."
  # Handle the absence of the file appropriately (e.g., exit with an error, use a default value, etc.)
  exit 1
fi