# 1. 新增用户
CREATE USER '用户名'@'localhost' IDENTIFIED BY '密码';

# 2. 新增用户权限
GRANT ALL PRIVILEGES ON 数据库.数据库表 TO '用户名'@'localhost';
# 2.1 用户名 可读权限:readdb 可写权限:writedb 测试权限:testdb
# 2.2 注意:部分user的名称限制16个字符
GRANT SELECT ON 数据库.* TO '用户名+服务器IP'@'服务器IP';

# 3. 查询用户的db权限
SELECT * FROM mysql.db

# 4. 删除用户对某数据库的所有权限
DELETE FROM mysql.db WHERE User = 'user' AND Db = 'test_db';

