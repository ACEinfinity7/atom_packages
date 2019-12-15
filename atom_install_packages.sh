#!/bin/bash
while read package_name; do
  apm install $package_name
  echo $package_name
done <package-list.txt
