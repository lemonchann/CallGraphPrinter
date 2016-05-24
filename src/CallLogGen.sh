#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 prog-name"
else
	echo "Generate Call log file for $1..."
	rm -rf ./log.txt
	echo "************************************" >> log.txt
	echo "`date "+%Y-%m-%d %H:%M:%S"`" >> log.txt
	echo "************************************" >> log.txt
	cat ./trace.txt | awk '{cmd1="echo called:&&addr2line "$1" -e ""'$1'"" -f";cmd2="echo caller:&&addr2line "$2" -e ""'$1'"" -f&&echo \n";system(cmd1);system(cmd2)}'     >> log.txt
fi
