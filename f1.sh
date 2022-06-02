#!/bin/bash

function log(){
	
	echo "$(date) --|-- Hello $1!"
}

log "Tom"

function calc(){

	return $(($1 + $2))
}

calc 2 4
num=$?

echo $num



function df_size(){
   df -h | grep '/$' | awk '{print $5}'
}

log "The size of X: $(df_size)"

