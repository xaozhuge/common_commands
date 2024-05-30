# 1. 添加账号
grant all privileges on *.* to 'username'@'%' identified by 'password';
# 2. 添加只读账号
grant SELECT on DB.* to 'read_only_DB'@'IP' identified by 'password';
# 3. 用于让 用户的修改和权限的更改 立即生效
flush privileges;

