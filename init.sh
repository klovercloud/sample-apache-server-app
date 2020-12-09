#!/bin/bash
set -e
echo '[INFO] Waiting for mounting persistent volume';
sleep 10s

files=(/home/klovercloud/app/*)
if [ ${#files[@]} -lt 10 ]; then 
	cp -r /home/klovercloud/tmp/app /home/klovercloud
    echo "[INFO] app files copied to $APP_HOME";
else
	echo "[INFO] $APP_HOME is not empty. Skipping copying files from tmp";
fi

sleep 3s
echo '[INFO] Config Initialization Completed';
