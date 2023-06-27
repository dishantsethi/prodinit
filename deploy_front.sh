#!/usr/bin/env sh

set -e

git checkout gh-pages
git reset --hard origin/master

rm -rf prod_back terraform deploy_front.sh README.md prod_front
cd frontend 
mv ./* ../..
cd ../..  
rm -rf frontend 

echo 'www.prodinit.com' > CNAME

git add .
git commit -m "Deployment $(date)"
git push -f origin gh-pages
