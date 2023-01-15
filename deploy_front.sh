#!/usr/bin/env sh

set -e

cd prod_front/

npm run build

cd dist

git add . -f
git commit -m "Deployment $(date)"
git push -f git@github.com:dishantsethi/prodinit.git master:gh-pages

# echo 'www.prodinit.com' > CNAME