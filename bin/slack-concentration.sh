#!/bin/bash
CONCENTRATION_MINUTES="${1:-15}"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PID_FILE=$DIR/running-pid
echo $$ > $PID_FILE

slack snooze start $CONCENTRATION_MINUTES

COUNTDOWN=$CONCENTRATION_MINUTES
while [  $COUNTDOWN -gt 0 ]; do
  slack status edit \
    --text "Concentrating on a case... I will check Slack again in $COUNTDOWN minutes!" \
    --emoji ":warning:"
  let COUNTDOWN=COUNTDOWN-1
  sleep 59 # the script ^^ takes about 1s...
done

slack snooze end
slack status clear

rm $PID_FILE
