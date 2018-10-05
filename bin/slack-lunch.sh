#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PID_FILE=$DIR/running-pid
echo $$ > $PID_FILE

slack status edit \
  --text "AFK lunch" \
  --emoji ":rice:"
slack presence away
sleep 45m
slack status clear
slack presence active

rm $PID_FILE
