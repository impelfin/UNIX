#!/bin/bash

if [ -f /home/$1/.plan ]; then
	cat /home/$1/.plan
else
	echo "$1님은 .plan 파일을 작성하지 않았습니다."
fi
