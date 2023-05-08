#!/bin/bash

if [ "$(id -u)" -ne 0]; then
  echo "You need to be root to run this script"
  exit 0
fi

echo "Copying file1.txt content to file2.txt"
cat foo/dummy/file1.txt > foo/dummy/file2.txt

echo "Moving file2.txt to empty folder"
mv foo/dummy/file2.txt foo/empty

tree foo

echo "Showing file2.txt"
cat foo/empty/file2.txt

exit 0
