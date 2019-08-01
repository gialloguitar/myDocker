#!/bin/bash

set -e

if [ "$ENV" = 'DEV' ];then

   echo "Running Development Server..."
   exec python "identidock.py"

elif [ "$ENV" = 'UNIT' ];then
   
   echo "Running Unit Tests..."
   exec python "test.py"

else 
   
   echo "Running Prod Server..."
   exec uwsgi --http 0.0.0.0:9090 --uwsgi-file /app/identidock.py \
              --callable app --stats 0.0.0.0:9191
fi
