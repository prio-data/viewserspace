#!/bin/bash
set -e

if ! viewser config get REMOTE_URL > /dev/null
then
   echo "Did not find mounted config file, trying env..."
   if [[ $REMOTE_URL != "" ]]
   then
      viewser config set REMOTE_URL $REMOTE_URL
   else
      echo "Viewser not configured, environment variable REMOTE_URL must be set"
      exit 1
   fi
fi

if [ -f /home/views/user_requirements.txt ]
then
   echo "Installing user dependencies"
   pip install -r /home/views/user_requirements.txt
fi

/home/views/run_notebook_server.sh
