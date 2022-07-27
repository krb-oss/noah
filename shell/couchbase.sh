#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'couchbase' --rm \
    -v $HOME/.data/couchbase:/opt/couchbase/var \
    -p 127.0.0.1:8091-8093:8091-8093 \
    -p 127.0.0.1:11210:11210 \
    couchbase
