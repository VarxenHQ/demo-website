#!/bin/sh

kubectl -n ${NAMESPACE} wait --for=condition=Ready pod -l app.kubernetes.io/name=varxen-web --timeout=300s
