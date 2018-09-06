#!/bin/bash
DIR1="/var/www/html"
RCMD="rsync -az --delete $DIR1/ root@192.168.4.205:/var/www/html/"

inotifywait -mrq -e modify,create,move,delete,attrib $DIR1/ | while read -n5 X
do
  $RCMD
done &
