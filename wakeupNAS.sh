#!/bin/bash
clear
echo "------------------------"
echo "Welcome to MadLabs USA!"
echo "------------------------"
echo "Waking up QNAP at Madlabs"
Say "Waking up QNAP at madlabs"
echo "Sending magic packet to x.x.x.x" #replace x's with ip address of your device
Say "Sending magic packet to x.x.x.x"
/Users/madlabusa/bin/wakeonlan 74:75:D0:D5:8e:1b #This is an example. insert your nic address here
Sleep 5
Say "Magic packet sent"
echo "Magic packet sent"
Say "Waiting 180 seconds for boot-up routine to complete"
echo "Waiting 180 seconds for boot-up routine to complete"
Sleep 180
Say "Sending 5 ping packets to check if QNAP is awake now"
Ping -oc 5 x.x.x.x > /dev/null && Say "QNAP is available" || Say "QNAP is still booting"
echo "Press command-q to close this window"
Say "Press command-Q to close this window"
