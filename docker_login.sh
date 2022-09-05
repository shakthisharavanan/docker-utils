#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

useradd --shell /bin/bash -G sudo ${USER}
sudo passwd -d ${USER}
# echo "${USER}:docker" | chpasswd
sudo --login --user ${USER}