#!/bin/bash

# Name
NAME="Hammad Kamran"

# Get CPU information
CPU_INFO=$(cat /proc/cpuinfo | grep 'model name' | uniq | awk -F ': ' '{print $2}')

# Get RAM information
RAM_TOTAL=$(free -h | awk '/^Mem/ {print $2}')

# Get HDD information
HDD_TOTAL=$(df -h / | awk 'NR==2 {print $2}')

# Print system information
echo "Name: $NAME"
echo "CPU: $CPU_INFO"
echo "RAM: $RAM_TOTAL"
echo "HDD Capacity: $HDD_TOTAL"
