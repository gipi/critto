#!/bin/bash

set -e

docker run -it -v $PWD:/source gipi/latex "$@"
