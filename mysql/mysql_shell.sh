# 1. 从文件中获取账号、密码
read username password <<< `cat server.txt |awk -F ':' '{print $1,$2}'`





