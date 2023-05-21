#!/bin/bash
echo "Iniciando contenedor"
docker run -d -p 27017:27017 --name m1 mongo
docker ps
docker exec -it m1 mongosh
python populate.py
exit
echo exit
