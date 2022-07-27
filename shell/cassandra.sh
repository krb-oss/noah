#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'cassandra' --rm \
    -v $HOME/.data/cassandra:/var/lib/cassandra \
    -p 127.0.0.1:7000:7000 \
    cassandra
