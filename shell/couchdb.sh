#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'couchdb' --rm \
    -v $HOME/.data/couchdb:/opt/couchdb/data \
    -p 127.0.0.1:5984:5984 \
    -e COUCHDB_USER=admin \
    -e COUCHDB_PASSWORD=password \
    couchdb
