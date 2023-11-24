#!/usr/bin/env sh
# abort on errors
set -e

# Generate CNAME (for github to setup automatic custom domain)
echo "opal-notes.xyz" > CNAME

# Commit repo
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:BertrandBev/opal-hosting.git main:gh-pages

# Cleanup git
rm -rf .git
