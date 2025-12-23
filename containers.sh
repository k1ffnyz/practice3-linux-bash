#!/bin/bash

FILE="containers-$(date +%Y-%m-%d).txt"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

echo "Дата и время: $DATE" > $FILE

if command -v docker >/dev/null 2>&1; then
    docker ps >> $FILE
else
    echo "Docker не установлен в системе" >> $FILE
fi

