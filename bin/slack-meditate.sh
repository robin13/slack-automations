#!/bin/bash
MEDITATION_TIME=23

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PID_FILE=$DIR/running-pid
echo $$ > $PID_FILE

slack status edit \
  --text "AFK meditating" \
  --emoji ":meditating:"
slack snooze start $MEDITATION_TIME
sleep ${MEDITATION_TIME}m
slack status clear

rm $PID_FILE
