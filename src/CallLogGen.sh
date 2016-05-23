#!/bin/bash
echo "Generate Call log file for $1..."
rm -rf ./log.txt
cat ./trace.txt | awk '{cmd1="echo called:&&addr2line "$1" -e ""'$1'"" -f";cmd2="echo caller:&&addr2line "$2" -e ""'$1'"" -f&&echo \n";system(cmd1);system(cmd2)}' >> log.txt
