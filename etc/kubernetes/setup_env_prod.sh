#!/usr/bin/env bash

set -x

gcloud container \
--project "wp-quelves" \
  clusters create "mean-cluster" \
  --zone "us-central1-f" \
  --machine-type "n1-standard-1" \
  --num-nodes "2" \
  --network "default"

gcloud container clusters get-credentials mean-cluster --zone us-central1-f --project wp-quelves

gcloud compute disks create \
  --project "wp-quelves" \
  --zone "us-central1-f" \
  --size 200GB \
  mongo-disk

kubectl create -f db-controller.yml
kubectl create -f db-service.yml
kubectl create -f web-controller.yml
kubectl create -f web-service.yml

kubectl get pods

