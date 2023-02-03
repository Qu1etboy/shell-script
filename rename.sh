search_dir=./files
i=1
zone='B'
for entry in "$search_dir"/*
do
  mv "$entry" "./files/${zone}${i}.txt"
  i=$((i+1))
  # echo "$entry"
done

# "./files/${zone}${i}.txt"
# "./files/${zone}${i}-$((i+1)).txt"