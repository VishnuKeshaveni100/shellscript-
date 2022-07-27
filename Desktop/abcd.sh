#!/bin/bash
file="/home/humancloud/Desktop/abc.txt"
while IFS= read -r line
do
  echo "$line"
done < "$file"

