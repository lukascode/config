#!/bin/bash

# Find java class provided by first argument
# eg. cd ~/.m2/repository ; findclass SpringBootApplication

set -e 
data=$(find $PWD -type f -name "*.jar" | xargs -n1 -I% unzip -l %)
current_archive=""
current_archive_printed=0
echo "$data" | while read line ; do
    if [[ $line =~ jar$ ]]; then
        current_archive=$line
        current_archive_printed=0
    fi
    if [[ $line =~ class$ ]]; then
        if [[ -n $1 && $line =~ $1 ]]; then
            if [[ $current_archive_printed -eq 0 ]]; then
                echo -e "\n$current_archive"
                current_archive_printed=1
            fi
            echo $line | awk '{print "    " $4}'
        fi
    fi
done
