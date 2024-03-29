#!/usr/bin/env sh

set -e

git checkout gh-pages
git reset --hard origin/master

rm -rf deploy_front.sh README.md prod_front
cp ./frontend/index.html ./
cp ./frontend/PRODINIT.png ./
cp ./frontend/PRODINIT.ico ./

mkdir assets
mkdir assets/css
mkdir assets/js
mkdir assets/images
mkdir pages

cp ./frontend/assets/css/* ./assets/css/
cp ./frontend/assets/js/* ./assets/js/
cp ./frontend/assets/images/* ./assets/images/
cp ./frontend/pages/* ./pages/

rm -rf frontend 

echo 'www.prodinit.com' > CNAME

git add .
git commit -m "Deployment $(date)"
git push -f origin gh-pages

git checkout master