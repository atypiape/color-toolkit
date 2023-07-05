set -eux

cd src
rm -rf ../lib
npx tsc --build tsconfig.json
cd ..

REPO=$(nrm current)

nrm use npm

npm login

npm publish --registry="https://registry.npmjs.org"

nrm use $REPO
