# How to use
# bash rename.sh <folder name that contain list of files> <index> <name>

search_dir=$1
i=$2
name=$3
for entry in "$search_dir"/*
do
  mv "$entry" "${search_dir}/${name}${i}.jpg"
  i=$((i+1))
  # echo "$entry"
done

# "./files/${name}${i}.txt"
# "./files/${name}${i}-$((i+1)).txt"