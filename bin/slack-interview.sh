#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PID_FILE=$DIR/running-pid
echo $$ > $PID_FILE

slack status edit \
  --text "Interviewing..." \
  --emoji ":phone:"
slack snooze start  60
sleep 60m

slack status clear

rm $PID_FILE
