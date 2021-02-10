#!/bin/sh

IMAGE_TYPE=$1

sudo docker build . -t "ethyling/miniforge-cuda:${IMAGE_TYPE}" --build-arg IMAGE_TYPE="${IMAGE_TYPE}"
