#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'neo4j' --rm \
    -v $HOME/.data/neo4j:/data \
    -p 127.0.0.1:7474:7474 \
    -p 127.0.0.1:7687:7687 \
    neo4j
