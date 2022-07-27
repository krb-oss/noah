#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'rethinkdb' --rm \
    -v $HOME/.data/rethinkdb:/data \
    -p 127.0.0.1:8080:8080 \
    rethinkdb
