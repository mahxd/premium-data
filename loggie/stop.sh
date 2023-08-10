#!/bin/bash

cd $(dirname "$0")

if [[ -f app.pid ]]
then

	kill -9 `cat app.pid`
	rm -rf app.pid
	echo app has been stopped.

else

	echo app is not running!

fi
