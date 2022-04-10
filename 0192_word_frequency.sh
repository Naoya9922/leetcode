#!/bin/sh
# https://leetcode.com/problems/word-frequency/
# Read from the file words.txt and output the word frequency list to stdout.
cat words.txt | tr ' ' '\n' | sed '/^$/d' | sort -rn | uniq -c | sort -rn | awk '{print $2" "$1}'
