#!/bin/bash

set -e

VERSION=1.7.4
echo "Installing socket.io version $VERSION"
npm install -G socket.io@$VERSION
DEBUG=* node socketIO_client/tests/serve.js &
sleep 1
nosetests

VERSION=2.1.1
echo "Installing socket.io version $VERSION"
npm install -G socket.io@$VERSION
DEBUG=* node socketIO_client/tests/serve.js &
sleep 1
nosetests
