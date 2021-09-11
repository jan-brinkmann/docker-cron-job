#!/bin/bash

CRON_SCHEDULE="${CRON_SCHEDULE:-"* * * * *"}"

echo "Install cron job with schedule $CRON_SCHEDULE."
echo "$CRON_SCHEDULE root /home/cron.sh > /proc/1/fd/1 2>&1" > /etc/cron.d/docker-cron-job
cron -f
