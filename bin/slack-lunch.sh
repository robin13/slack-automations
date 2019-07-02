#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PID_FILE=$DIR/running-pid
echo $$ > $PID_FILE

slack chat send \
  --channel "#support" \
  --text "_AFK for :lunch:_"

slack status edit \
  --text "AFK lunch" \
  --emoji ":lunch:"
slack presence away
sleep 50m
slack status clear
slack presence active

rm $PID_FILE
