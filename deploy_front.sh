#!/usr/bin/env sh

set -e

git checkout gh-pages
git reset --hard origin/master

rm -rf prod_back terraform deploy_front.sh README.md prod_front
cp ./frontend/index.html ./
cp ./frontend/PRODINIT.png ./
mkdir assets/css
mkdir assets/js
mkdir assets/images

cp ./frontend/assets/css/* ./assets/css/
cp ./frontend/assets/js/* ./assets/js/
cp ./frontend/assets/images/* ./assets/images/

rm -rf frontend 

echo 'www.prodinit.com' > CNAME

git add .
git commit -m "Deployment $(date)"
git push -f origin gh-pages
