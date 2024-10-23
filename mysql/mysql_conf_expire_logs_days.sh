# 1. expire_logs_days 是 MySQL 中用于控制二进制日志（binary logs）自动删除的系统变量
# 用于 MySQL 保留二进制日志的天数, 超过这个天数的日志将被自动删除, 以释放磁盘空间并防止二进制日志文件无限增长

# 2. 临时修改 expire_logs_days
SET GLOBAL expire_logs_days = 7;

