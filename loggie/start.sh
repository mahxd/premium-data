#!/bin/bash

cd $(dirname "$0")

if [[ -f app.pid ]]
then

echo app is running.

else

docker cp premium-data_es01_1:/usr/share/elasticsearch/config/certs .
nohup  ./loggie -config.pipeline "pipelines.local.yml" 2>&1 >> app.log &
echo $! > app.pid
echo app is started.

fi

