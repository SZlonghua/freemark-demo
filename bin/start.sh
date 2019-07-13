#!/bin/bash
echo "chmod user"
chmod 777 /root/demo/bin/*
chmod 777 /root/demo/freemark-demo-0.0.1-SNAPSHOT.jar
echo "execute...."
cd /root/demo/
nohup /usr/java/jdk1.8.0_144/bin/java -jar -Dspring.config.location=/root/demo/conf/application.properties freemark-demo-0.0.1-SNAPSHOT.jar  > /root/demo/log.log 2>&1 &
pidnew=`ps -ef | grep freemark-demo-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{print $2}'`
echo "new process id: $pidnew"
echo "start success"