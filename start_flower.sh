#!/bin/sh
set -x
if [ -z ${FLOWER_BROKER} ];
    then
        echo "FLOWER_BROKER is empty"
        exit 1
fi
if [ -z ${PORT} ];
    then
        echo "PORT is empty"
        exit 1
fi
if [ -z ${FLOWER_CONFIG} ]; 
    then
        echo "FLOWER_CONFIG is empty"
        exit 1
fi
/usr/local/bin/flower --broker="${FLOWER_BROKER}" --port="${PORT}" --conf="${FLOWER_CONFIG}"