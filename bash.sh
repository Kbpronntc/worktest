#!/bin/bash
HTTP_CODE=$(curl --write-out "%{http_code}\n" "https://yandex.ru" --output output.txt --silent)
echo $HTTP_CODE 