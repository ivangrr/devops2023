#!/bin/bash

if [ "$(id -u)" -ne 0]; then
  echo "You need to be root to run this script"
  exit 0
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
echo "Me encanta bash!!" > foo/dummy/file1.txt

echo "Creating file2.txt in dummy folder"
echo "" > foo/dummy/file2.txt

tree foo

echo "Showing file1.txt"
cat foo/dummy/file1.txt

echo "Showing file2.txt"
cat foo/dummy/file2.txt

exit 0

