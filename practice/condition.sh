read n

# if [[ $n -gt 3 ]]; then
#   echo "$n is greater than 3"
# else
#   echo "$n is lower than 3"
# fi

# one line if else
[[ $n -gt 3 ]] && echo "$n is greater than 3" || echo "$n is lower or equal to 3"