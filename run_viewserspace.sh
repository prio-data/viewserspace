#!/bin/bash
set -e

echo "Configuring viewser"

if [[ $REMOTE_URL = "" ]]
   then
      echo "Environment variable REMOTE_URL must be set"
      exit 1
fi

viewser config set REMOTE_URL $REMOTE_URL

/home/views/run_notebook_server.sh
