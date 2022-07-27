#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'ghost' --rm \
    -e url=http://localhost:2368 \
    -v $HOME/.data/ghost:/var/lib/ghost/content \
    -p 127.0.0.1:2368:2368 \
    ghost
