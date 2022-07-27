#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'mongodb' --rm \
    -v $HOME/.data/mongodb:/data/db \
    -p 127.0.0.1:27017:27017 \
    mongo
