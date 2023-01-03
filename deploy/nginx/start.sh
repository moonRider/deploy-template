#!/bin/sh
set -e

cd /app/dist

echo "window.__getBase = function() { return '$BASE_PATH' }" > runtime.js
sed -i "s#/BASE_PLACEHOLDER/#$BASE_PATH#g" ./index.html

nginx $@
