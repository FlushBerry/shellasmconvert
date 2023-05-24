#!/bin/bash

#On lit le /home/brute qui contient les buf += b"\x2b\xc9\x83\xe9\xae\xe8\xff\xff\xff\xff\xc0\x5e"
e1=$(cat /home/brute | cut -d "\"" -f2 | sed 's/\\x/,/g' | tr -d '\n' | cut -c2- | sed 's/,/h,/g')

#On add le h final et on add les 0 si nos hexa commence par une lettre
e2=$(echo $e1\h | sed 's/,\([a-z]\)/,0\1/g')

#mise en forme avec les DB
IFS=',' read -ra elements <<< "$e2"
count=0

for element in "${elements[@]}"; do
  if (( count % 8 == 0 )); then
    printf "\n DB %s" "$element"
  else
    printf ",%s" "$element"
  fi
  ((count++))
done

echo ""
echo ""
