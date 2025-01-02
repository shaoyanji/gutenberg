#!/bin/bash
INPUT_FILE=$1

while IFS= read -r line; do
  # Check if the line starts with a code block marker
  if [[ $line =~ ^\s*\*\*\** ]]; then
    # Write the code to the file
    output_file="hi.txt"

    echo "$output_file"
    >"$output_file"

    # Skip the code block marker line
    while IFS= read -r line; do
      # Check if the line ends the code block
      if [[ $line =~ ^\*\*\* ]]; then
        break
      fi
      # Append the code line to the file
      echo "$line" >>"$output_file"
    done
  fi
done <"$INPUT_FILE"
