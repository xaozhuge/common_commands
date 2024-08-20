#!/bin/bash
start_time=`date -d "4 minute ago" +"%Y-%m-%d %H:%M:00"`
end_time=`date -d "1 minute ago" +"%Y-%m-%d %H:%M:00"`
title="$start_time 到 $end_time 数据表更新情况"
binlog_dir=/alidata/server/mysql/data/
filename=`ls -lt /alidata/server/mysql/data/ | grep 'mysql-bin.0' |head -n 1|awk '{print $9}'`
tmp_file=/tmp/tmp.sql
runtime_log=/alidata/www/script.com/runtime_log

#生成分钟前的日志
/alidata/server/mysql-5.6.21/bin/mysqlbinlog --no-defaults --base64-output=decode-rows -v -v --start-datetime="$start_time" --stop-datetime="$end_time" $binlog_dir$filename > $tmp_file
#分析分钟前的日志
echo $title >> $runtime_log
echo "`cat $tmp_file|grep '###'|grep 'DELETE\|UPDATE\|INSERT' | awk -F '.' '{print $2}'|sort -r | uniq -c | sort -n -r| head -n 10`" >> $runtime_log
