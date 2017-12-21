#!/bin/bash
set -x

gcloud container \
--project "wp-quelves" \
  clusters create "mean-cluster" \
  --zone "us-central1-f" \
  --machine-type "n1-standard-1" \
  --num-nodes "2" \
  --network "default"
