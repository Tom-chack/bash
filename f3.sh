#!/bin/bash

set -e

log_msg() {
	echo "$(date) ----- $1"
}

disk_usage() {
	df -h | grep '/$' | awk '{print $5}'
}

cpu_usage(){
	top -b -n1 | grep "^%Cpu" |  awk '{print $2+$4+$6}'
}

log_msg "Hi user, your disk usage is: $(disk_usage), your CPU usage: $(cpu_usage)%"
