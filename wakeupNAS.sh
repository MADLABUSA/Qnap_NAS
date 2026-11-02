#!/bin/bash
clear
echo "------------------------"
echo "Welcome to MadLabs USA!"
echo "------------------------"
echo "Waking up QNAP at Madlabs"
Say "Waking up QNAP at madlabs"
echo "Sending magic packet to 10.0.0.179"
Say "Sending magic packet to 10.0.0.179"
/Users/mohsinali/bin/wakeonlan 54:75:D0:D5:8F:1A
Sleep 5
Say "Magic packet sent"
echo "Magic packet sent"
Say "Waiting 180 seconds for boot-up routine to complete"
echo "Waiting 180 seconds for boot-up routine to complete"
Sleep 180
Say "Sending 5 ping packets to check if QNAP is awake now"
Ping -oc 5 10.0.0.179 > /dev/null && Say "QNAP is available" || Say "QNAP is still booting"
echo "Press command-q to close this window"
Say "Press command-Q to close this window"
