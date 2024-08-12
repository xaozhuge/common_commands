# 1. 解析 mysql-bin.012000, 并写入文件 /tmp/temp
/alidata/server/mysql-5.6.21/bin/mysqlbinlog --no-defaults --base64-output=decode-rows -v -v /alidata/server/mysql/data/mysql-bin.012000 > /tmp/tmp.sql
