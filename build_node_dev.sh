#!/bin/bash

set -x

sudo docker build --force-rm=true --no-cache=true -t quelves/dev:node . -f etc/docker/Dockerfile

