#!/usr/bin/env bash
set -x

kubectl create -f db-controller.yml
kubectl create -f db-service.yml
kubectl create -f web-controller.yml
kubectl create -f web-service.yml

kubectl get pods


