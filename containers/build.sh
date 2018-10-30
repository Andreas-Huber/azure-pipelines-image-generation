#!/bin/bash

function usage() {
    echo "Usage: build.sh REGISTRY"
}

registry="$1"

if [ -z "$registry" ]; then
    usage
    exit 1
fi

docker build -t base/stretch base/stretch

docker build -t "$registry"/dotnetcore/stretch/amd64:2.1 dotnetcore/2.1/stretch/amd64
docker build -t "$registry"/node8-typescript/stretch/amd64 node8-typescript/stretch/amd64

docker push "$registry"/node8-typescript/stretch/amd64
docker push "$registry"/dotnetcore/stretch/amd64:2.1
