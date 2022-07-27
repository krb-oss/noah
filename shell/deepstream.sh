#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'deepstream' --rm \
    -v $HOME/.data/deepstream/conf:/usr/local/deepstream/conf \
    -v $HOME/.data/deepstream/var:/usr/local/deepstream/var \
    -p 127.0.0.1:6020:6020 \
    -p 127.0.0.1:8080:8080 \
    deepstreamio/deepstream.io
