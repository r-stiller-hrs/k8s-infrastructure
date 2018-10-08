#!/bin/bash

helm install stable/heapster --name heapster -f values.yml --namespace kube-system
# kubectl get clusterrole -n kube-system system:heapster -o yaml > role.yml
# add nodes/stats to resources: ...
# kubectl apply -f role.yml
