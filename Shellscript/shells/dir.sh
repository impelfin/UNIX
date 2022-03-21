#!/bin/bash
a="$1"
if [ -d /root/$a ]; then
	echo "$a 디렉토리가 존재 합니다. "
else
	echo "$a 디렉토리가 존재하지 않습니다. "
fi

