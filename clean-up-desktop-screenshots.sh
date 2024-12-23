#!/bin/bash

# Set the base directory
DESKTOP_DIR=~/Desktop
NEW_DIRNAME="screenshots-$(date +%Y-%m-%d)"

# Check if current date dir exists, if not, create it
ensure_dir_exists() {
    local dir_name="$1"
    if [ ! -d "dir_name"]; then
        mkdir "$dir_name"
    fi
    echo "$dir_name"
}

clean_up_screenshots() {
    
}