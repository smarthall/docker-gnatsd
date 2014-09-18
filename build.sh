#!/bin/bash

VERSION="0.5.6"
URL="https://github.com/apcera/gnatsd/releases/download/v${VERSION}/gnatsd-v${VERSION}-linux-amd64.tar.gz"

echo "Downloading from \"${URL}\""
curl -sL ${URL} | tar xzvf - -C . ./gnatsd

docker build .

