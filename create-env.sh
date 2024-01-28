#/usr/bin/bash

echo "ROOT_ACCESS_PASSWORD=$(cat /dev/urandom | strings | grep -Eoa "[a-zA-Z0-9@$%&_]*" | head -n 10 | tr -d '\n'| cut -c1-16)" > .env
echo "DATABASE_PASSWORD=$(cat /dev/urandom | strings | grep -Eoa "[a-zA-Z0-9@$%&_]*" | head -n 10 | tr -d '\n'| cut -c1-16)" >> .env
echo "USER_DB_NAME=zerodb" >> .env  
echo "MYSQL_USER=zerodba" >> .env
echo "TZ=Asia/Colombo" >> .env
