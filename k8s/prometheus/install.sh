#!/bin/bash

helm install stable/prometheus --name prometheus -f values.yml --namespace kube-system
