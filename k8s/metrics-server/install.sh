#!/bin/bash

helm install stable/metrics-server --name metrics-server -f values.yml --namespace kube-system
