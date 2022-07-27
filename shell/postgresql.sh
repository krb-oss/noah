#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name='postgresql' --rm \
    -v $HOME/.data/postres:/var/lib/postgresql/data \
    -p 127.0.0.1:5432:5432 \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=postgres \
    postgres
