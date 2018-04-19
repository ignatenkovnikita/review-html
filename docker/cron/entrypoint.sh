#!/bin/bash
# Run scheduler
while [ true ]
do
#    date
   /app/update_git.sh  > /tmp/cron.log &
  sleep 60
done