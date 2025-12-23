#!/bin/bash

LOG="removed-containers.log"

if command -v docker >/dev/null 2>&1; then
    docker ps -a --filter "status=exited"
else
    echo "$(date) - Docker отсутствует. Удаление невозможно." >> $LOG
fi
