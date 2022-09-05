#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

useradd --shell /bin/bash ${USER}
exec sudo --login --user ${USER}
