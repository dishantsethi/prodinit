#!/usr/bin/env sh

set -e

git checkout gh-pages
git reset --hard origin/master

rm -rf prod_back terraform deploy_front.sh README.md 
cd prod_front/dist 
mv ./* ../..
cd ../..  
rm -rf prod_front 
echo 'prodinit.com' > CNAME

git add .
git commit -m "Deployment $(date)"
git push -f origin gh-pages

git checkout master

