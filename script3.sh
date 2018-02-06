#!/bin/bash

clear
echo "This script will be talking about dev"
echo "This is were we are at"
pwd
echo "let change to the dev directory"
cd /dev/
pwd
echo "Now let view what's inside dev"
sleep 10
ls
sleep 6

clear
cd /home/user/
echo "Now let copy data in block of fixed size"
echo "Using the dd command to create a file name 'new_file'"
dd if=/dev/zero of=new_file bs=1024 count=1
sleep 6
echo "NOW LET SEE WHERE THAT FILE IS"
ls
sleep 10
echo "Now let see an example of udevd tool"
echo "you can used udevadm to search and explore system devices"
echo "also has the ability to monitor uevent as udevd receives them from the kernel."
echo "Here is an example to see all the udev attribute and generated in conjunction."
sleep 21

clear
udevadm info --query=all --name=/dev/sda
sleep 6

clear
echo "This example, will be using Monitoring command"
echo "TO EXIT WHAT YOUR VIEW IN THE NEXT COUPLE SECOND  click Ctrl+z"
sleep 5
udevadm monitor
