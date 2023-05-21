#!/bin/bash

echo "Ejecutando MYSQL y phpmyadmin "
docker run -d --name=db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=mysql_pwd mysql:8
docker run --name=my-admin -p 82:80 --link db:db -d phpmyadmin
docker logs db


