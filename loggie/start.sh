#!/bin/bash

cd $(dirname "$0")

if [[ -f app.pid ]]
then

echo app is running.

else

nohup  ./loggie -config.pipeline "pipelines.local.yml" 2>&1 >> app.log &
echo $! > app.pid
echo app is started.

fi

