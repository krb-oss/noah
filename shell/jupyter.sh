#!/bin/bash
# encoding: utf-8

set -o errexit -o nounset

docker run --name "jupyter" --rm \
    -v "$HOME:/notebooks"
    -p 127.0.0.1:8888:8888 \
    continuumio/anaconda3 \
    /bin/bash -c \
    "/opt/conda/bin/conda install jupyter -y --quiet \
    && /opt/conda/bin/jupyter notebook --notebook-dir=/notebooks \
    --ip='*' --port=8888 --no-browser --allow-root"
