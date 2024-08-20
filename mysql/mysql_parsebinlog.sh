#!/bin/bash
start_time=`date -d "4 minute ago" +"%Y-%m-%d %H:%M:00"`
end_time=`date -d "1 minute ago" +"%Y-%m-%d %H:%M:00"`
title="$start_time 到 $end_time 数据表更新情况"
binlog_dir=/alidata/server/mysql/data/
filename=`ls -lt /alidata/server/mysql/data/ | grep 'mysql-bin.0' |head -n 1|awk '{print $9}'`
tmp_file=/tmp/tmp.sql
runtime_log=/alidata/www/script.com/runtime_log

