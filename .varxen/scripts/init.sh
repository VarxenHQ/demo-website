#!/bin/sh

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv ./kubectl /usr/local/bin

# Save the current deployment and autoscaler to restore them once the experiment finishes
kubectl -n ${NAMESPACE} get HorizontalPodAutoscaler ${HPA} -o yaml > .varxen/${HPA}.backup.yaml
kubectl -n ${NAMESPACE} get deployment ${DEPLOYMENT} -o yaml > .varxen/${DEPLOYMENT}.backup.yaml
