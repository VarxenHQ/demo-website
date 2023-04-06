#!/bin/sh

# Restore the deployment and horizontal pod autoscaler
kubectl -n ${NAMESPACE} replace --force -f .varxen/${HPA}.backup.yaml
kubectl -n ${NAMESPACE} replace --force -f .varxen/${DEPLOYMENT}.backup.yaml
