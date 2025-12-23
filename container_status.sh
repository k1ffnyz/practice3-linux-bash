#!/bin/bash

NAME=$1
LOG="container-status-$(date +%Y-%m-%d).log"

if command -v docker >/dev/null 2>&1; then
    docker ps | grep "$NAME" && echo "Контейнер запущен"
else
    echo "$(date) - Docker отсутствует. Проверка невозможна." >> $LOG
fi
