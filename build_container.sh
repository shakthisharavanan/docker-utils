#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

DOCKERFILE="$1.Dockerfile"
IMAGE_BUILD_NAME="${USER}/$1"

CMD="docker build --tag ${IMAGE_BUILD_NAME} --file ${DOCKERFILE} ."
echo "running ${CMD}"

eval "$CMD"
