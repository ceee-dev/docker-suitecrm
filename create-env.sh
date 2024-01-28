#/usr/bin/bash

echo "COMPOSE_PROJECT_NAME=suitcrm" > .env
echo "MARIADB_PASSWORD=$(cat /dev/urandom | strings | grep -Eoa "[a-zA-Z0-9@$%&_]*" | head -n 10 | tr -d '\n'| cut -c1-16)" >> .env
echo "TZ=Asia/Colombo" >> .env
