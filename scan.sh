#!/bin/bash
Path='/home/dan/Soubory/Skript/"antivirus"'

if [[ -z $1 ]]; then
  echo -ne "\e[36mEnter the search directory: \e[31m"
  read dir
  echo -e "\e[0m"
else
  dir=$1
fi

for i in $dir/*; do
  values='[]'

  [[ -d $i ]] && $Path/scan.sh "$i"

  if [[ -f $i ]]; then
    echo "сканирую: $i"

    # echo "Before: $values"
    values=$(node $Path/test.js "$i")
    # echo "After: $values"

    if [[ ! $values == '[]' ]]; then
      a="'$i'"
      b="$values"
      echo "$(node $Path/add.js $a $b)" >> '.dump.json'
    fi
  fi
done
