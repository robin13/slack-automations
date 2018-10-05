#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PID_FILE=$DIR/running-pid
if [ -f $PID_FILE ]; then
  kill -9 `cat $PID_FILE`
  rm $PID_FILE
fi

slack presence active
slack snooze end
slack status clear
