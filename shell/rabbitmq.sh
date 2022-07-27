#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'rabbitmq' --rm \
    -v $HOME/.data/rabbitmq:/var/lib/rabbitmq \
    -p 127.0.0.1:5672:5672 \
    -p 127.0.0.1:15672:15672 \
    --hostname rabbitmq \
    rabbitmq
