#!/bin/bash
slack status edit \
  --text ":children_crossing: Offline Thursday, back on Friday"  \
  --emoji ":house:"
slack snooze start --minutes 2280
slack presence away
