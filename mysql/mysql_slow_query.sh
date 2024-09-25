# 1. 查找 my.cnf 文件, 配置 slow_query_log = 1
vi /etc/my.cnf
slow_query_log = 1

# 2. 配置慢日志的位置
slow_query_log_file=/alidata/log/mysql/mysql_slow.log

# 3. 配置慢日志的时间
long_query_time = 2

