#!/bin/bash

case "$1" in
	ko)
		echo "서울"
		;;
	us)
		echo "워싱턴"
		;;
	cn)
		echo "북경"
		;;
	jp)
		echo "도쿄"
		;;
	*)
		echo "국가명을 입력하세요."
		;;
esac
