#!/bin/bash

helm install stable/kubernetes-dashboard --name dashboard -f values.yml --namespace kube-system
