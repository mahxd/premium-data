#!/bin/bash

cd $(dirname "$0")

if [[ -f app.pid ]]
then
	./stop.sh	
	./start.sh
else

	./start.sh
fi

