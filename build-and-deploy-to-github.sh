#!/bin/sh

set -e

git clone --single-branch --branch master "https://github.com/SBuild-org/site-sbuild-org-assets-1" assets-repo

mkdir target
cp -r assets-repo/assets/uploads target/uploads

LC_ALL=C ./sbuild-wrapper jbake

cd target

git init

git config user.name "SBuild CI"
git config user.email "le.petit.fou@web.de"

echo "sbuild.org" > CNAME

git add .

git commit -m "Automatic deploy to GitHub Pages."

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master > /dev/null 2>&1
