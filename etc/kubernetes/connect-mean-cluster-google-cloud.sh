#!/bin/bash
set -x

gcloud container clusters get-credentials mean-cluster --zone us-central1-f --project wp-quelves

