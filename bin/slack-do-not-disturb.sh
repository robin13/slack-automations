#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

slack snooze start 480

slack status edit \
  --text "I am concentrating... please do not disturb." \
  --emoji ":warning:"
