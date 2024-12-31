#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Initialize a Git repository
echo "Initializing Git repository..."
git init

#ssh-keygen -t ed25519 -C "imjpmp@example.com"
#ssh-add ~/.ssh/id_ed25519eval "$(ssh-agent -s)"

# Add the Python files to the repository
echo "Adding files to repository..."
git add *

# Commit the changes
echo "Committing changes..."
git commit -m "Add calculator script and unit tests"

# Add the remote repository
echo "Adding remote repository..."
git remote add origin git@github.com:jpmateosp/my_test.git

# Push changes to the remote repository
echo "Pushing changes to remote repository..."
git branch -M main
git push -u origin main

echo "All done!"
