#!/usr/bin/env sh

# abort on errors
set -e

# build project
yarn docs:build

# Password in variable

# Encrypt Links.
find docs/.vuepress/dist/Links/ -type f -name '*.html' -exec ./node_modules/.bin/staticrypt {} hallol \;

# navigate into the build output directory
cd docs/.vuepress/dist

rm Links/index.html
mv Links/index_encrypted.html Links/index.html


git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:Frooob/FFF.git master:gh-pages

cd -