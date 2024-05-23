# 1. 添加账号
grant all privileges on *.* to 'username'@'%' identified by 'password';
# 2. 添加只读账号
grant SELECT on DB.* to 'read_only_DB'@'IP' identified by 'password';




