#!/bin/bash
# This script replaces all occurrences of "julian" with the current user's username
# in all files in the current folder and its subdirectories.

# Get the current username
USER_NAME=$(whoami)

echo "Replacing 'julian' with '$USER_NAME' in all files..."

# Recursively find all files and perform an in-place substitution.
# Note: This uses sed's in-place editing (-i) option.
find . -type f -exec sed -i "s/julian/${USER_NAME}/g" {} +

echo "Replacement complete."
