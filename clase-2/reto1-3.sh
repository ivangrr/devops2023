#!/bin/bash

if [ "$(id -u)" -ne 0]; then
  echo "You need to be root to run this script"
  exit 0
fi

if [ $# -eq 0 ]; then
    CONTENIDO="Que me gusta bash!!!!"
else
    CONTENIDO=$1
fi

echo "Installing tree"
apt-get install tree -y

echo "Creating foo"
mkdir foo

echo "Creating dummy folder in foo folder"
mkdir foo/dummy

echo "Creating empty folder in foo folder"
mkdir foo/empty

echo "Creating file1.txt in dummy folder"
echo $CONTENIDO > foo/dummy/file1.txt

echo "Creating file2.txt in dummy folder"
echo "" > foo/dummy/file2.txt

tree foo

echo "Showing file1.txt"
cat foo/dummy/file1.txt

echo "Showing file2.txt"
cat foo/dummy/file2.txt

echo "Copying file1.txt content to file2.txt"
cat foo/dummy/file1.txt > foo/dummy/file2.txt

echo "Moving file2.txt to empty folder"
mv foo/dummy/file2.txt foo/empty

tree foo

echo "Showing file2.txt"
cat foo/empty/file2.txt
