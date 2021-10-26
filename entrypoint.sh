#!/bin/sh

echo "aws version"

aws --version

echo "Attempting to update kubeconfig for aws"

aws eks update-kubeconfig --name "$INPUT_CLUSTER_NAME"
kubectl "$@"