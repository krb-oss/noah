#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'dynamodb' --rm \
    -v $HOME/.data/dynamodb:/dynamodb_local_db \
    -p 127.0.0.1:8000:8000 \
    cnadiminti/dynamodb-local
