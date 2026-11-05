#!/bin/bash
if [[ -z $2 ]]; then
   n=3
else
n=$2
fi
X=$(($n * 2))
if [[ $(cat "$1" | wc -l) -gt $X  ]]; then
	echo WARNING this file is longer than the script can show!
	echo First $n lines:
	head -n $n "$1"
	echo ...
	echo Last $n lines:
	tail -n $n "$1"
else
	head -n $X "$1"
fi
