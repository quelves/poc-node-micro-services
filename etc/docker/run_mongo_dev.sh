#!/bin/bash
set -x

docker stop dc-mongo-1
docker rm dc-mongo-1

docker run -d -i -t -P --name dc-mongo-1 -h dc-mongo-1 \
  --net dc-net \
  -p 27017:27017 \
  -v $(pwd)/../../data:/data/db \
  mongo --auth


