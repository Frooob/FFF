#!/usr/bin/env sh

# abort on errors
set -e

REMOTE_REPO="git@github.com:Frooob/FFF.git"

npm install

# build project
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

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