#!/bin/bash

docker pull nginx:1.22.1
docker run --name=db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=mysql_pwd -d mysql:8
docker logs db
docker run --name=my-admin -p 82:80 --link db:db -d phpmyadmin
docker ps