#!/bin/bash

kubectl apply -f 00-volume.yml
helm install stable/influxdb --name influxdb -f values.yml --namespace kube-system
