#!/bin/bash

# Set variables
REPO_NAME="kishor645"
IMAGE_NAME="wazuh-agent"
IMAGE_TAG=$1

# Build image 
docker build -t ${REPO_NAME}/${IMAGE_NAME}:${IMAGE_TAG} .

# Push image to Repo
docker push ${ACR_NAME}/${IMAGE_NAME}:${IMAGE_TAG}

# Deploy DaemonSet
kubectl apply -f k8s/

