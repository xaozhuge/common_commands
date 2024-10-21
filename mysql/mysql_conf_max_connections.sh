# 1. 查看当前 max_connections 设置
SHOW VARIABLES LIKE 'max_connections%';

# 2. 临时修改 max_connections
SET GLOBAL max_connections = 1024;

