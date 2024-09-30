#!/bin/bash
# 主机
host=
# 账号
user=
# 密码
password=
# 端口
port=

#慢查询结果
array=($(mysql -h$host -u$user -P$port -p$password -e "show slave status\G"|grep "Slave_IO_Running:\|Slave_SQL_Running:\|Seconds_Behind_Master:"))

echo Slave_IO_Running ':' ${array[1]}
echo Slave_SQL_Running ':' ${array[3]}
echo Seconds_Behind_Master ':' ${array[5]}

