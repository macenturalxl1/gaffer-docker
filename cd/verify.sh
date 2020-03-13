#!/bin/bash
# set -e
# if [ ${TRAVIS_PULL_REQUEST} != 'true' ]; then
#     exit 0
# fi
# Run tests
cd kubernetes/hdfs
helm test hdfs

kubectl hdfs-namenode-0 -- nslookup hdfs-datanode-0
kubectl hdfs-namenode-0 -- nslookup hdfs-datanode-0.hdfs-datanodes