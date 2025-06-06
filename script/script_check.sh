#!/bin/bash
source /etc/profile

# 定义函数
notice() {
	local key=$1
	local content=$2
	remind=
	URL=https://域名.com/im/robot/send?key=$key
	JSON="{\"content\": \"$content\", \"remind\": \"$remind\"}"
	HEADER1="Content-Type: application/json";
	curl -s -S -X POST "$URL" -H "$HEADER1" -d "$JSON";
}

today=`date "+%Y-%m-%d"`
filename=/alidata/log/php/fail/sendSms-$today.log
log=/alidata/log/php/fail/smsruntime.log
words=`date -d "1 minute ago" +"%Y-%m-%d %H:%M"`

if [ -f "$filename" ]; then
	count=$(cat $filename|grep "$words"|wc -l)
else
	exit 1
fi

msg=$words" 发送了 $count 条短信"


if [ "$count" -gt 0 ]; then
	# 记录日志
	echo $msg >> $log
fi

