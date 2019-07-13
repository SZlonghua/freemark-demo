#!/bin/bash
echo "stop SpringBoot BAppApiServerApplication"
pid=`ps -ef | grep freemark-demo-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{print $2}'`
echo "old process id: $pid"
for id in $pid
do
	kill -9 $id
	echo "killed $id"
done
echo " kill process completed"