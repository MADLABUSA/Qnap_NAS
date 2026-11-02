#!/bin/bash
say "Connecting to Qnap"
ssh admin@10.0.0.179 "poweroff"
say "Starting poweroff"
sleep 2
say "waiting 30 seconds for poweroff to complete"
sleep 3
ping -oc 5 10.0.0.179 > /dev/null && Say "QNAP is completing the powering off process" || Say "QNAP is powered off"
Say "Closing the power-off script"
sleep 1
exit

