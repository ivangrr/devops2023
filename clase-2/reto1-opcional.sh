#!/bin/bash

if [ "$(id -u)" -ne 0]; then
  echo "You need to be root to run this script"
  exit 0
fi

if [ $# -eq 0 ]; then
    CONTENIDO="footer-icons"
else
    CONTENIDO=$1
fi


wget https://es.wikipedia.org/wiki/DevOps
cat DevOps | grep -n $CONTENIDO

exit 0