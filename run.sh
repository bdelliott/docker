#!/bin/bash

set -e

if [ -z ${DOCKER_HUB_USERNAME} ]
then
    echo "The DOCKER_HUB_USERNAME environment variable must be set."
    exit 1
fi

DIR=`pwd`
IMAGE=`basename ${DIR}`
TAG="${DOCKER_HUB_USERNAME}/${IMAGE}"

docker run --rm -it ${TAG}
