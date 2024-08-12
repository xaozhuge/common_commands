# 1. 解析 mysql-bin.012000, 并写入文件 /tmp/temp
/alidata/server/mysql-5.6.21/bin/mysqlbinlog --no-defaults --base64-output=decode-rows -v -v /alidata/server/mysql/data/mysql-bin.012000 > /tmp/tmp.sql

# 2. 指定binlog中的时间,时间格式 2024-01-01 00:00:00
start_time=`date -d "4 minute ago" +"%Y-%m-%d %H:%M:00"`
--start-datetime="$start_time" 
--stop-datetime="$end_time"
