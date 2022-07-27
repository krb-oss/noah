#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'mariadb' --rm \
    -v $HOME/.data/mariadb:/var/lib/mysql \
    -p 127.0.0.1:3306:3306 \
    -e MYSQL_ROOT_PASSWORD=password123 \
    mariadb
