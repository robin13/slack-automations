#!/bin/bash
BRB_MINUTES="${1:-30}"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PID_FILE=$DIR/running-pid
echo $$ > $PID_FILE
slack presence away

COUNTDOWN=$BRB_MINUTES
while [  $COUNTDOWN -gt 0 ]; do
  slack status edit \
    --text "AFK on a short errand - I will check Slack again in $COUNTDOWN minutes!" \
    --emoji ":brb:"
  let COUNTDOWN=COUNTDOWN-1
  sleep 59 # the script ^^ takes about 1s...
done

slack presence active
slack status clear

rm $PID_FILE
