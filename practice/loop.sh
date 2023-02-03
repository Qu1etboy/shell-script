#!/bin/bash

rm number.txt

for i in {0..20}
  do 
    [[ $((i % 2)) -eq 0 ]] && echo -n "even " >> number.txt || echo -n "odd " >> number.txt 
  done
# append new line
echo >> number.txt