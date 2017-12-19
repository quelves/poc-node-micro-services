#!/bin/bash
set -x

docker stop dc-node-1
docker rm dc-node-1

docker run -d -i -t --name dc-node-1 -h dc-node-1 \
  -p 14200:4200 \
  -p 13000:3000 \
  -v $(pwd)/../../:/app \
  quelves/dev:node



