#!/bin/bash

URL="https://schedule.uust.ru/schedule"
DATE=$(date +"%Y-%m-%d %H:%M:%S")
LOG="errors-$(date +%Y-%m-%d).log"

STATUS=$(curl -Is "$URL" | head -1 | awk '{print $2}')

if [ "$STATUS" = "200" ]; then
    echo "$DATE - $URL - OK"
else
    echo "$DATE - $URL - FAIL" | tee -a $LOG
fi
