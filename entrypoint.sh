#!/bin/sh

echo "aws version"

aws --version

aws configure list

echo "Attempting to update kubeconfig for aws"

aws eks update-kubeconfig --name "$INPUT_CLUSTER_NAME"
kubectl "$@"