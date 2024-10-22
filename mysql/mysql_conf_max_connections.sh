# 1. 查看当前 max_connections 设置
SHOW VARIABLES LIKE 'max_connections%';

# 2. 临时修改 max_connections
SET GLOBAL max_connections = 1024;

# 3. 永久修改 max_connections
vi /etc/my.cnf
[mysqld]
max_connections = 1024

# 4. 当配置过低, 或者代码有问题时, 会出现以下错误
SQLSTATE[HY000] [1040] Too many connections

