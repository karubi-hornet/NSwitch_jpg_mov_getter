#!/bin/sh

IMG_DIR=./img
MOV_DIR=./mov

if [ ! -d $IMG_DIR ]; then
    mkdir $IMG_DIR
fi
if [ ! -d $MOV_DIR ]; then
    mkdir $MOV_DIR
fi

# images
find Album/ -name *.jpg | xargs -I% mv % ${IMG_DIR}

# movies
find Album/ -name *.mp4 | xargs -I% mv % ${MOV_DIR}
