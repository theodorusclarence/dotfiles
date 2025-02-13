#!/bin/bash

# Save current date for backup filename
current_date=$(date +"%Y%m%d_%H%M%S")

# Create temporary directory
temp_dir=$(mktemp -d)
cd "$temp_dir" || exit

# Copy necessary files from current directory
# Only copy package.json and .git directory as they're required for standard-version
cp -r "$(pwd)/../../package.json" .
cp -r "$(pwd)/../../.git" .

# Initialize git in temp directory if needed
git init > /dev/null 2>&1
git add . > /dev/null 2>&1
git commit -m "temp: Initialize" > /dev/null 2>&1

# Install standard-version locally
npm install --silent standard-version > /dev/null 2>&1

# Generate changelog for the last week
npx standard-version --skip.bump --skip.commit --skip.tag --releaseCommitMessageFormat "chore(release): changelog {{currentTag}}" > /dev/null 2>&1

# Display the generated CHANGELOG.md
if [ -f CHANGELOG.md ]; then
    echo "=== Last Week's Changelog ==="
    echo ""
    cat CHANGELOG.md
else
    echo "No changelog was generated"
fi

# Clean up
cd - > /dev/null 2>&1
rm -rf "$temp_dir"