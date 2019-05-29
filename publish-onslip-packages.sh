#!/bin/bash

set -ex

export BINTRAY_USER=user
export BINTRAY_KEY=key

git clean -d -i
pod repo update
bash scripts/prerelease.sh
bash scripts/generate.sh
(cd android && npm publish)
(cd cli && npm publish)
