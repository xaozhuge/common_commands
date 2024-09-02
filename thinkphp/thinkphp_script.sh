#!/bin/bash
control=$1
action=$2
date=$(date +%Y%m%d)
logpath=/alidata/log/php/script/${control}/
count=$(ps aux|grep php|wc -l)

if [[ $count -gt 100 ]]; then
	echo "脚本超载运行" >> ${logpath}${action}-${date}.log
	exit;
fi
