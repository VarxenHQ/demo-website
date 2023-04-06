#!/bin/sh

. .varxen/.env
kubectl -n ${NAMESPACE} apply -f .varxen/hpa.yml
kubectl -n ${NAMESPACE} set resources deployment ${DEPLOYMENT} \
  --requests cpu=${CPU_REQUEST}m,memory=${RAM_REQUEST}Mi --limits cpu=${CPU_RESOURCE}m,memory=${RAM_RESOURCE}Mi
