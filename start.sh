#!/bin/sh
echo 'begin run =========================='
cd /go
chmod +x /go/micro
chmod +x /go/account-srv
chmod +x /go/console-api
echo '1 start micro =========================='
/go/micro gateway --handler=api --namespace=myj.rmsplus.api &
echo '2 start account-srv =========================='
/go/account-srv &
echo '3 start console-api =========================='
/go/console-api &
echo 'end start console-api =========================='

while :
do
  sleep 60
done