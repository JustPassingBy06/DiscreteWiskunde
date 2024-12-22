#!/bin/bash

# Check if a commit message was provided
COMMIT_MESSAGE=$1

# Informing user about the conversion process
echo "Converting all .odt files in the current folder to .pdf's. Please wait, this might take a while."

time libreoffice --convert-to pdf *.odt

git add .
git status

# If a commit message is provided, commit changes
if [ -n "$COMMIT_MESSAGE" ]; then
    git commit -m "$COMMIT_MESSAGE"
    echo "Changes committed with message: '$COMMIT_MESSAGE'"
   	git push
else
    echo "No commit message provided. Skipping git commit."
fi
