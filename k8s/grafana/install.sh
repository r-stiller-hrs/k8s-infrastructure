#!/bin/bash

kubectl apply -f 00-volume.yml
helm install stable/grafana --name grafana -f values.yml --namespace kube-system
