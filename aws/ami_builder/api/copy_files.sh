#!/bin/bash

# Set the source directory to the root folder
source_dir="../../../aws"

# Set the destination directory to the current directory (subfolder)
destination_dir="."

# Copy files matching the pattern from the root folder to the subfolder
if ! files_copied=$(find "${source_dir}" -maxdepth 1 -type f -name "*.hcl" -exec cp {} "${destination_dir}/" \; 2>&1); then
    echo "Error: Files could not be copied."
    echo "Error message: ${files_copied}"
    exit 1
fi

echo "Files copied successfully."