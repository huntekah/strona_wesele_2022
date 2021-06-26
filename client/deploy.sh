#!/usr/bin/env #!/bin/sh

set -e

npm run build

cd dist

git init

git add -A
git commit -m 'deploy'
git push -f git@github.com:huntekah/strona_wesele_2022.git master:gh-pages
cd -
