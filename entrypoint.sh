#!/bin/bash

if [[ "$1" == "cubeserver" ]]; then
    eval "cubeserver ${@:2}"
elif [[ "$1" == "cubecli" ]]; then
    eval "cubecli ${@:2}"
fi

