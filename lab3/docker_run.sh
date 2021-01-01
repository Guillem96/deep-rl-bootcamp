#!/usr/bin/env bash

DIR=$(pwd)
echo "Using volume dir: ${DIR}"

xhost +local:root >/dev/null
docker run --rm -p 5000:5000 -e VISKIT_PORT=5000 \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${DIR}:/root/code/bootcamp_pg \
    -ti dementrock/deeprlbootcamp \
        ${1-/bin/bash} "${@:2}"
xhost -local:root >/dev/null
