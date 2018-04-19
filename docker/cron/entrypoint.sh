#!/bin/bash
# Run scheduler
while [ true ]
do
#    date
  find /app -type d -maxdepth 1 -exec  git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \; > /tmp/cron.log &
  sleep 600
done