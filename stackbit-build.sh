#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://staging.widget.stackbit.com/init.js 612f69ea9581dc00bd2367dc

echo "stackbit-build.sh: finished build"
