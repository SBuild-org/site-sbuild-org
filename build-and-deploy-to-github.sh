#!/usr/bin/env sh

set -e
set -x

echo "TRAVIS_BRANCH=${TRAVIS_BRANCH}"
echo "TRAVIS_PULL_REQUEST=${TRAVIS_PULL_REQUEST}"

echo ">>> Fetching assets"

git clone --single-branch --branch master "https://github.com/SBuild-org/site-sbuild-org-assets-1" assets-repo

mkdir target
cp -r assets-repo/assets/uploads target/uploads

echo ">>> Building site"

LC_ALL=C ./sbuild-wrapper jbake

echo "sbuild.org" > target/CNAME

if [ "${TRAVIS_PULL_REQUEST}" = "false" -a "${TRAVIS_BRANCH}" = "master" ]; then

  echo ">>> Preparing GitHub pages branch"

  cd target

  git init

  git config user.name "SBuild CI"
  git config user.email "le.petit.fou@web.de"

  git add .

  git commit -m "Automatic deploy to GitHub Pages."

  echo ">>> Deploying GitHub pages branch"

  git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master > /dev/null 2>&1

else
  echo ">>> Skipping deployment to GitHub pages as this is not the master branch or a pull request"

fi

echo "<<< DONE
