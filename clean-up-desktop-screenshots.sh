#!/bin/bash

# set the dir to cleanup and new dir name for today's date
DIR_TO_CLEANUP=~/Desktop
NEW_DIR_NAME="screenshots-$(date +%Y-%m-%d)"

# check if current date dir exists, if not, create it
ensure_dir_exists() {
    local dir_name="$1"
    if [ ! -d "$dir_name"]; then
        mkdir "$dir_name"
    fi
    echo "$dir_name"
}

# main function that actually does the cleanup
clean_up_screenshots() {
    cd "$DIR_TO_CLEANUP" || { echo "Failed to access directory to clean up"; exit 1; }

    TARGET_DIR=$(ensure_dir_exists "$NEW_DIR_NAME")

    # matches only files that start with "Screenshot"
    for file in Screenshot*; do
        if [ -e "$file" ]; then
            mv "$file" "$TARGET_DIR"
        fi
    done
    echo "Moved screenshots into: $TARGET_DIR"
}

# run the script
clean_up_screenshots