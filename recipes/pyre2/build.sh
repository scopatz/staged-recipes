#!/bin/bash
set -e
set -x

export CPLUS_INCLUDE_PATH="${PREFIX}/include:${CPLUS_INCLUDE_PATH}"

${PYTHON} setup.py install