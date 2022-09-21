#!/bin/bash

set -eu

REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")

echo "## Cleaning current working dir"

find . -delete

echo "## Initializing git repo..."
if [ ! -d .git ];
then git init
fi
git config --global --add safe.directory /github/workspace
echo "### Adding git remote..."
git remote add origin https://x-access-token:$GITHUB_TOKEN@github.com/$REPO_FULLNAME.git
echo "### Getting branch"
BRANCH=${GITHUB_REF#*refs/heads/}
echo "### git fetch $BRANCH ..."
git pull origin $BRANCH
echo "### Branch: $BRANCH (ref: $GITHUB_REF )"
git checkout $BRANCH

echo "## Configuring git author..."
git config --global user.email "travailleur@interieur.gouv.fr"
git config --global user.name "Bob le Bricoleur"

# Ignore workflow files (we may not touch them)
git update-index --assume-unchanged .github/workflows/*

