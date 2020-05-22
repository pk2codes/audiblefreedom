#!/bin/bash

# PASTE LINK LIST HERE (Space separated list)
declare -a arr=(
    ...
)

# PASTE NAME LIST HERE (Space separated list)
declare -a names_arr=(
    "Manhattan 2058. 1-6"
    "Mechanicum: The Horus Heresy 9"
    "Abyssus: The Horus Heresy 8"
    ...
)

counter=0
outDir="/path/to/out/dir"
for link in "${arr[@]}"
do
    echo "downloading ${names_arr[counter]}"
    wget "$link" -O "${outDir}/${names_arr[counter]}"
    counter=$((counter+1))
done
