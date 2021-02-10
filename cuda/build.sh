#!/bin/sh

IMAGE_TYPE=$1

sudo docker build ${IMAGE_TYPE}/ -t ethyling/cuda:${IMAGE_TYPE}
