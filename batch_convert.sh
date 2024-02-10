#!/bin/bash

# set target directory
target_directory="./"

cd "$target_directory" || exit 1

mkdir -p txt

# process all txt files inside directory
for file in *.txt; do
    # check whether file is exist
    if [ -e "$file" ]; then
        echo "Processing $file"
        ./kaf-cli-auto --filename "$file" >/dev/null

        # move file to txt 
        mv "$file" txt/
    else
        echo "File not found: $file"
    fi
done
