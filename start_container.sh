#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

IMAGE_NAME="${USER}/$1"

RUN_FLAGS="--rm -it "
RUN_FLAGS+="--env USER=${USER} "
RUN_FLAGS+="--hostname $1-docker "
RUN_FLAGS+="--volume /mnt/workspace:/home/${USER} "
RUN_FLAGS+="--runtime=nvidia --env NVIDIA_VISIBLE_DEVICES=all --env NVIDIA_DRIVER_CAPABILITIES=compute,utility "
RUN_FLAGS+="--shm-size=5g "
RUN_FLAGS+="--env TERM=xterm-256color "

CMD="docker run ${RUN_FLAGS} ${IMAGE_NAME}"
echo "running ${CMD}"

eval "$CMD"