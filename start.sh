#!/bin/sh
# 还可以设置环境变量，读取JAVA_OPT 设置jvm参数
echo 'begin run ...'
sh /go/micro gateway --handler=api --namespace=myj.rmsplus.api

while :
do
  sleep 60
done