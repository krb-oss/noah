#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'influxdb' --rm \
    -v $HOME/.data/influxdb:/var/lib/influxdb \
    -p 127.0.0.1:8083:8083 \
    -p 127.0.0.1:8086:8086 \
    influxdb
