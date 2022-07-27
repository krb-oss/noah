#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name='redis' --rm \
    -v $HOME/.data/redis:/data \
    -p 127.0.0.1:6379:6379 \
    redis

