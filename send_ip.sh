#!/bin/bash
ifconfig | ssh aditya@155.198.123.6 'cat > /home/aditya/Documents/phd/tx2/ifconfig.dmp'
