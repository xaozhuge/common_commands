# 1. 新增用户
CREATE USER '用户名'@'localhost' IDENTIFIED BY '密码';

# 2. 新增用户权限
GRANT ALL PRIVILEGES ON 数据库.数据库表 TO '用户名'@'localhost';



