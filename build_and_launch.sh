#!/bin/bash
# @Author: Luis Condados
# @Date:   2022-02-07 21:36:48
# @Last Modified by:   Luis Condados
# @Last Modified time: 2022-02-07 22:06:52

# The argument to this script is the image name. This will be used as the image on the local
image=$1

if [ "$image" == "" ]
then
    echo "Usage: $0 <image-name>"
    exit 1
fi

chmod +x workspace/serve

# Build docker
docker build  -f ./Dockerfile -t ${image} .

docker run --rm -p 8000:8000 ${image} serve