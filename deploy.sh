#!/usr/bin/env sh

# abort on errors
set -e

REMOTE_REPO="git@github.com:Frooob/FFF.git"

npm install

# build project
npm run docs:build

# Password in variable
echo Passwort variable erstellen.
Passwort = "hhwunderbar"
echo Passwort variable erstellt.

# Encrypt Links.
find docs/.vuepress/dist/Links/ -type f -name '*.html' -exec ./node_modules/.bin/staticrypt {} $Passwort \;

# Encrypt AGs
find docs/.vuepress/dist/AGs/ -type f -name '*.html' -exec ./node_modules/.bin/staticrypt {} $Passwort \;


# navigate into the build output directory
cd docs/.vuepress/dist

rm Links/index.html
mv Links/index_encrypted.html Links/index.html

rm AGs/index.html
mv AGs/index_encrypted.html AGs/index.html



git init

if [ "${GITHUB_TOKEN}" ]
then # github actions
    git config user.name "${GITHUB_ACTOR}" && \
    git config user.email "${GITHUB_ACTOR}@users.noreply.github.com" && \
    REMOTE_REPO="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
fi

git add -A
git commit -m 'deploy'

git push -f $REMOTE_REPO master:gh-pages


cd -