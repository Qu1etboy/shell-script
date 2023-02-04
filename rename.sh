search_dir=$1
i=72
zone='WM'
for entry in "$search_dir"/*
do
  mv "$entry" "${search_dir}/${zone}${i}.jpg"
  i=$((i+1))
  # echo "$entry"
done

# "./files/${zone}${i}.txt"
# "./files/${zone}${i}-$((i+1)).txt"