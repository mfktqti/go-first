#!/bin/bash

export set GOPROJECTPATH=/var/www/GoQioZuTest 
 

cd $GOPROJECTPATH
MAIN_PROCESS_NUM=$(pgrep GoQioZuTest)
if [ ! -z "$MAIN_PROCESS_NUM" ]; then
  echo "GoRentingTest is already running, now kill it and restart..."
  kill -9 $MAIN_PROCESS_NUM
fi
