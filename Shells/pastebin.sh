#!/bin/bash

touch templinks

links="$(curl -s "https://pastebin.com/archive" | grep "status -public" | cut -d"=" -f3 | cut -d'"' -f2 | tr -d "/")"

  for l in $links; do
    result=$(grep "$l" templinks)
    if [ "$result" == "" ]; then echo $l >> templinks; fi
  done

for result in $(cat templinks); do
  echo "$result" >> templinks2
  result2="$(curl -s "https://pastebin.com/raw/$result" | grep "input")";
  if [ "$result2" != "" ]; then echo "https://pastebin.com/raw/$result"; fi;
done
