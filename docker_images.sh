#!/bin/bash

FILE="docker-images-sizes-$(date +%Y-%m-%d).txt"
DATE=$(date)

echo "Дата проверки: $DATE" > $FILE

if command -v docker >/dev/null 2>&1; then
    docker images >> $FILE
else
    echo "Docker не установлен. Получение списка образов невозможно." >> $FILE
fi
