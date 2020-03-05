#!/usr/bin/env sh

# abort on errors
set -e

if [ -z "$1" ]
then
    REMOTE_REPO="git@github.com:Frooob/FFF.git"
else
    REMOTE_REPO="https://Frooob:$1@github.com/Frooob/FFF.git"
fi


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

git push -f $REMOTE_REPO master:gh-pages


cd -