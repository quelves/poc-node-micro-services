#!/bin/bash
set -x

docker tag quelves/dev:mean gcr.io/quelves/poc-mean
gcloud docker -- push gcr.io/poc-mean/myapp


