#!/bin/bash

slack chat send \
  --channel "#support" \
  --text "_Finished for today... :wave:_"

slack status edit \
  --text "AFK end of work day"  \
  --emoji ":crescent_moon:"
slack snooze start --minutes 840
slack presence away
