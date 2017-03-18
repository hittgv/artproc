#!/usr/bin/env bash

set +xeuo pipefail

rm -rf ./external-http-gateway/node_modules
rm -rf ./brain/node_modules
rm -rf ./artproc-http/node_modules

cd external-http-gateway
npm install
cd ..

cd brain
npm install
cd node_modules
ln -s ../../external-http-gateway external-http-gateway
cd ../..

cd artproc-http
npm install
cd node_modules
ln -s ../../brain brain
ln -s ../../external-http-gateway external-http-gateway
cd ../..

echo "All done!"
