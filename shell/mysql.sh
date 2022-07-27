#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name='mysql' --rm \
    -v $HOME/.data/mysql:/var/lib/mysql \
    -p 127.0.0.1:3306:3306 \
    -e MYSQL_ROOT_PASSWORD=password123 \
    mysql
