#!/bin/bash
set -x

docker stop dc-node-1
docker rm dc-node-1

docker run -d -i -t --name dc-node-1 --link dc-mongo-1:mongo -h dc-node-1 \
  --net dc-net \
  -p 14200:4200 \
  -p 13000:3000 \
  -v $(pwd)/../../../lb-app:/app \
  quelves/dev:node /bin/bash



