#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'cockroachdb' --rm \
    -v $HOME/.data/cockroachdb:/cockroach/cockroach-data \
    -p 127.0.0.1:26257:26257 \
    -p 127.0.0.1:8080:8080 \
    cockroachdb/cockroach start --insecure
