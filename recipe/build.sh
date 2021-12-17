#!/bin/bash

set -ex

make

if [[ "$CONDA_BUILD_CROSS_COMPILATION" != "1" ]]; then
    # Tests normally return non-zero exit codes, hence the '-i'.
    make -i check
fi

make install
