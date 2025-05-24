# 1. 添加账号
grant all privileges on *.* to 'username'@'%' identified by 'password';

# 2. 添加只读账号
GRANT SELECT ON 数据库名称.* TO 'readdb+数据库IP'@'堡垒机IP' identified by 'password';
GRANT SELECT ON 数据库名称.* TO 'readdb+数据库IP'@'堡垒机IP';

# 3. 用于让 用户的修改和权限的更改 立即生效
flush privileges;

# 4. 删除账号
DROP USER 'readdb+数据库IP'@'堡垒机IP';

# 5. 修改账号
SET PASSWORD FOR 'username'@'host' = PASSWORD('new_password');

# 6. 查看某个用户的DB权限
SHOW GRANTS FOR 'user'@'%'

# 7. 撤销某个DB的权限
REVOKE ALL PRIVILEGES ON salesdb.* FROM 'alice'@'%';

