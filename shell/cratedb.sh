#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'cratedb' --rm \
    -v $HOME/.data/cratedb:/data \
    -p 127.0.0.1:4200:4200 -p 127.0.0.1:4300:4300 \
    -p 127.0.0.1:5432 \
    -e CRATE_HEAP_SIZE=4g \
    crate crate -Cnode.name=crate-1
