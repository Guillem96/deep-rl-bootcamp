#!/usr/bin/env bash

DIR=$(pwd)
if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    VOLUME_DIR="$(wslpath -a -w "$DIR")"
else
    VOLUME_DIR=$DIR
fi
viskit_port=$("$DIR/findport.py" 5000 1)

xhost +local:root >/dev/null
docker run --rm -p $viskit_port:$viskit_port -e VISKIT_PORT=$viskit_port \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v "$VOLUME_DIR":/root/code/bootcamp_pg \
    -ti dementrock/deeprlbootcamp \
        ${1-/bin/bash} "${@:2}"
xhost -local:root >/dev/null
