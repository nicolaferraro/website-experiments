#!/bin/sh

set -e

./node_modules/@antora/cli/bin/antora site.yml --stacktrace --pull
serve build/site
