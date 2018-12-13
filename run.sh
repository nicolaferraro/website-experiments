#!/bin/sh

set -e

# Erase content
rm -rf docs

# Build content
./node_modules/@antora/cli/bin/antora site.yml --stacktrace --pull

# Tell github not to ignore underscores in file names
echo "" > docs/.nojekyll

# Serve the content
cd docs
python3 -m http.server 5000
