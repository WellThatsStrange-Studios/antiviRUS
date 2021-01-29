#!/bin/bash
Path='/home/dan/Soubory/Skript/"antivirus"'

process=($(cat $Path/process.txt))

for i in $(top -b -n 1 | grep "$USER" | head -n10 | awk '{ print $12 }'); do
  killall $i
done

for i in ${process[@]}; do
  killall $i
done
