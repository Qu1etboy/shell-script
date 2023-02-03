#!/bin/bash

rm output.txt
# while read -r line; do
#   x=($line) # split to array by space
#   [[ ${x[0]} > ${x[1]} | bc -l ]] && echo "TRUE" >> output.txt || echo "FALSE" >> output.txt
# done < input.txt

# Open the file for reading
while read -r line; do
  # Split the line into an array using space as the delimiter
  numbers=($line)

  # Assign the first and second elements of the array to variables
  number1=${numbers[0]}
  number2=${numbers[1]}

  # Compare the two numbers using the bc command
  result=$(echo "$number1 > $number2" | bc -l)

  # Print the result
  if [[ $result -eq 1 ]]; then
    echo "$number1 > $number2" >> output.txt
  else
    echo "$number1 < $number2" >> output.txt
  fi
done < input.txt




