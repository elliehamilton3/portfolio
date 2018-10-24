#!/usr/bin/env sh

# abort on errors
set -e

git config --global user.email "$GH_EMAIL" > /dev/null 2>&1
git config --global user.name "$GH_NAME" > /dev/null 2>&1

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:elliehamilton3/elliehamilton3.github.io.git master

cd -