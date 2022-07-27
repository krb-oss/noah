#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name 'mssql' --rm \
    -v $HOME/.data/mssql:/var/opt/mssql \
    -p 127.0.0.1:1433:1433 \
    -e ACCEPT_EULA='Y' \
    -e MSSQL_SA_PASSWORD=password123 \
    microsoft/mssql-server-linux:2017-latest
