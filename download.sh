#!/bin/bash

URL="https://jsonplaceholder.typicode.com/todos/1"
DATE=$(date +"%Y-%m-%d-%H-%M-%S")
FILE="downloaded-file-$DATE.json"
LOG="download-errors.log"

STATUS=$(curl -s -w "%{http_code}" -o $FILE $URL)

if [ "$STATUS" = "200" ]; then
    echo "Файл загружен: $FILE"
else
    echo "$(date) - Ошибка загрузки ($STATUS)" >> $LOG
fi
