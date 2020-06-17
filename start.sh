#!/bin/sh
# 还可以设置环境变量，读取JAVA_OPT 设置jvm参数
echo 'begin run ...=========================='
chmod +x /go/micro
chmod +x /go/account-srv
chmod +x /go/console-api
/go/micro gateway --handler=api --namespace=myj.rmsplus.api
/go/account-srv
/go/console-api

while :
do
  sleep 60
done