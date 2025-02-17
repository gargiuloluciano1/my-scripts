#!/bin/bash


 func () {
	local names=$(find -type f | sed '/swp$/d;/.git/d;/test/d')

	echo
	figlet -c TODOs > doos
	for entry in ${names} ; do
		grep -To "TODO[[:space:]].*$" ${entry} | sed 's/TODO/\o033[1;31mTODO\o033[0m/' >>doos;
	done
	
	cat doos

	echo 
	echo 
 }
 
 func
