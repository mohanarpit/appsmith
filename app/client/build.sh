#!/bin/sh

set -e

echo "REACT_APP_SENTRY_RELEASE: $REACT_APP_SENTRY_RELEASE"
echo "Sentry Auth Token: $SENTRY_AUTH_TOKEN"

EXTEND_ESLINT=true craco --max-old-space-size=4096 build --config craco.build.config.js

rm ./build/static/js/*.js.map
echo "build finished"
