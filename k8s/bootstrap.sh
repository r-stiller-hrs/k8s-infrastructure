#!/bin/bash

pushd influxdb
./install.sh
popd

pushd heapster
./install.sh
popd

pushd prometheus
./install.sh
popd

pushd metrics-server
./install.sh
popd

pushd grafana
./install.sh
popd

pushd dashboard
./install.sh
popd
