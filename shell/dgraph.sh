#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'dgraph' --rm \
    -v $HOME/.data/dgraph:/dgraph \
    -p 127.0.0.1:8080:8080 \
    -p 127.0.0.1:9080:9080 \
    -p 127.0.0.1:8000:8000 \
    dgraph/standalone
