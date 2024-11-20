#!/bin/sh
#

docker buildx build --push --platform linux/amd64,linux/arm64,linux/arm/v7 -t drewmoseley/docker-debug:latest .
