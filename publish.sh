set -eux

cd src
rm -rf ../dist
npx tsc --build tsconfig.json
cd ..

REPO=$(nrm current)

nrm use npm

npm login

npm publish

nrm use $REPO
